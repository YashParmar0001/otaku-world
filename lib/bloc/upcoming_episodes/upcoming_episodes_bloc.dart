import 'dart:async';
import 'dart:developer' as dev;

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/paginated_data_bloc/paginated_data_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/home/upcoming_episodes.graphql.dart';

part 'upcoming_episodes_event.dart';

part 'upcoming_episodes_state.dart';

class UpcomingEpisodesBlocDummy<Q, E extends PaginatedDataType> extends PaginatedDataBloc<Q, E> {}

class UpcomingEpisodesBloc
    extends Bloc<UpcomingEpisodesEvent, UpcomingEpisodesState> {
  UpcomingEpisodesBloc() : super(UpcomingEpisodesInitial()) {
    on<LoadUpcomingEpisodes>(
      _onLoadUpcomingEpisodes,
      transformer: droppable(),
    );
  }

  var _page = 1;
  var _hasNextPage = true;
  final List<Query$GetUpcomingEpisodes$Page$media?> _episodes = [];

  Future<void> _onLoadUpcomingEpisodes(
    LoadUpcomingEpisodes event,
    Emitter<UpcomingEpisodesState> emit,
  ) async {
    if (_page == 1) emit(UpcomingEpisodesLoading());
    final response = await event.client.query$GetUpcomingEpisodes(
      Options$Query$GetUpcomingEpisodes(
        variables: Variables$Query$GetUpcomingEpisodes(
          page: _page,
        ),
      ),
    );

    if (response.hasException) {
      final exception = response.exception!;

      if (exception.linkException != null) {
        emit(
          const UpcomingEpisodesError('Please check your internet connection!'),
        );
      } else {
        emit(const UpcomingEpisodesError('Some Unexpected error occurred!'));
      }
    } else {
      final data = response.parsedData!;
      _hasNextPage = data.Page!.pageInfo!.hasNextPage!;
      dev.log('Page: $_page');
      _page++;
      _episodes.addAll(data.Page!.media!);
      dev.log('Episodes list size: ${_episodes.length}');

      emit(UpcomingEpisodesLoaded(
        episodes: List.from(_episodes),
        hasNextPage: _hasNextPage,
      ));
    }
  }

  @override
  void onTransition(
      Transition<UpcomingEpisodesEvent, UpcomingEpisodesState> transition) {
    dev.log(transition.toString(), name: 'UpcomingEpisodesBloc');
    super.onTransition(transition);
  }
}
