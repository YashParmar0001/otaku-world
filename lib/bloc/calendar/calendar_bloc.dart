import 'dart:async';
import 'dart:developer' as dev;
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/utils/formatting_utils.dart';
import '../../graphql/__generated/graphql/calendar/calendar.graphql.dart';

part 'calendar_event.dart';
part 'calendar_state.dart';

class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  CalendarBloc() : super(CalendarInitial()) {
    on<LoadCalendarDay>(_onLoadCalendarDay);
  }

  final List<Query$GetCalendarDay$Page$airingSchedules?> list = [];

  Future<void> _onLoadCalendarDay(
    LoadCalendarDay event,
    Emitter<CalendarState> emit,
  ) async {
    list.clear();
    emit(CalendarLoading());
    final response = await loadData(
      event.client,
      FormattingUtils.getUnixTimeStampFromDate(
        DateTime(
          event.date.year,
          event.date.month,
          event.date.day,
          0,
          0,
          0,
        ),
      ),
      FormattingUtils.getUnixTimeStampFromDate(
        DateTime(
          event.date.year,
          event.date.month,
          event.date.day,
          23,
          59,
          59,
        ),
      ),
    );
    if (response.hasException) {
      final exception = response.exception!;

      if (exception.linkException != null) {
        emit(
          const CalendarError('Please check your internet connection!'),
        );
      } else {
        emit(const CalendarError('Some Unexpected error occurred!'));
      }
    } else {
      final data = response.parsedData!;

      list.addAll(data.Page!.airingSchedules!);
      dev.log('Episodes list size: ${list.length}', name: 'CalendarBloc');

      emit(CalendarLoaded(
        list: List.from(list),
      ));
    }
  }

  Future<QueryResult<Query$GetCalendarDay?>> loadData(
      GraphQLClient client, int airingatGreater, int airingatLesser) {
    return client.query$GetCalendarDay(Options$Query$GetCalendarDay(
        fetchPolicy: FetchPolicy.networkOnly,
        cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
        variables: Variables$Query$GetCalendarDay(
          airingAt_greater: airingatGreater,
          airingAt_lesser: airingatLesser,
        )));
  }

  @override
  void onTransition(Transition<CalendarEvent, CalendarState> transition) {
    dev.log(transition.toString(), name: 'CalendarBloc');
    super.onTransition(transition);
  }
}
