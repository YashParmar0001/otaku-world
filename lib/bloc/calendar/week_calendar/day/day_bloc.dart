import 'dart:async';
import 'dart:developer' as dev;

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/calendar/calendar.graphql.dart';

import '../../../../graphql/__generated/graphql/fragments.graphql.dart';
import '../../../../utils/formatting_utils.dart';

part 'day_event.dart';

part 'day_state.dart';

class DayBloc extends Bloc<DayEvent, DayState> {
  DayBloc(this.day) : super(DayInitial()) {
    on<ResetDay>(_onResetDay);
    on<RefreshDay>(_onRefreshDay);
    on<LoadDay>(_onLoadDay);
  }

  final DateTime day;
  var page = 1;
  var hasNextPage = true;
  final List<Fragment$CalendarAiringSchedule?> list = [];

  void _onResetDay(ResetDay event, Emitter<DayState> emit) {
    page = 1;
    hasNextPage = true;
    list.clear();
    emit(DayInitial());
  }

  void _onRefreshDay(RefreshDay event, Emitter<DayState> emit) {
    page = 1;
    hasNextPage = true;
    list.clear();
    add(LoadDay(event.client));
  }

  Future<void> _onLoadDay(LoadDay event, Emitter<DayState> emit) async {
    if (page == 1) emit(EpisodesLoading());
    final start = FormattingUtils.getUnixTimeStampFromDate(
      DateTime(day.year, day.month, day.day),
    );
    final end = FormattingUtils.getUnixTimeStampFromDate(
      DateTime(day.year, day.month, day.day, 23, 59, 59),
    );

    final response = await event.client.query$GetCalendarDay(
      Options$Query$GetCalendarDay(
        fetchPolicy: FetchPolicy.networkOnly,
        cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
        variables: Variables$Query$GetCalendarDay(
          page: page,
          airingAt_greater: start,
          airingAt_lesser: end,
        ),
      ),
    );

    if (response.hasException) {
      final exception = response.exception!;

      if (exception.linkException != null) {
        emit(
          const DayError('Please check your internet connection!'),
        );
      } else {
        emit(const DayError('Some Unexpected error occurred!'));
      }
    } else {
      final data = response.parsedData!;
      hasNextPage = data.Page!.pageInfo!.hasNextPage!;
      dev.log(
        'Page: $page',
        name: 'DayBloc${day.weekday - DateTime.now().weekday}',
      );
      page++;
      list.addAll(data.Page!.airingSchedules!);
      dev.log(
        'Episodes list size: ${list.length}',
        name: 'DayBloc${day.weekday - DateTime.now().weekday}',
      );

      emit(EpisodesLoaded(
        episodes: List.from(list),
        hasNextPage: hasNextPage,
      ));
    }
  }

  @override
  void onTransition(Transition<DayEvent, DayState> transition) {
    dev.log(transition.toString(), name: 'DayBloc');
    super.onTransition(transition);
  }
}
