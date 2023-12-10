import 'dart:async';
import 'dart:developer' as dev;

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/home/trending_anime.graphql.dart';

import '../../graphql/__generated/graphql/home/upcoming_episodes.graphql.dart';

part 'paginated_data_event.dart';

part 'paginated_data_state.dart';

abstract class PaginatedDataBloc<Q, E extends PaginatedDataType>
    extends Bloc<PaginatedDataEvent, PaginatedDataState> {
  PaginatedDataBloc() : super(PaginatedDataInitial()) {
    on<LoadData>(
      _onLoadData,
      transformer: droppable(),
    );
  }

  var _page = 1;
  var _hasNextPage = true;
  final List<Q?> _list = [];

  Future<void> _onLoadData(LoadData event, Emitter<PaginatedDataState> emit) async {
    if (_page == 1) emit(PaginatedDataLoading());
    final response = await _selectQuery(event.client);

    if (response.hasException) {
      final exception = response.exception!;

      if (exception.linkException != null) {
        emit(
          const PaginatedDataError('Please check your internet connection!'),
        );
      } else {
        emit(const PaginatedDataError('Some Unexpected error occurred!'));
      }
    } else {
      final data = response.parsedData!;
      // _hasNextPage = data.Page!.pageInfo!.hasNextPage!;
      // _list.addAll(data.Page!.media!);
      _processData(data);

      _page++;
      dev.log('Page: $_page');
      dev.log('Episodes list size: ${_list.length}');

      emit(PaginatedDataLoaded(
        episodes: List.from(_list),
        hasNextPage: _hasNextPage,
      ));
    }
  }

  void _processData(Object data) {
    dev.log('Processing data: ${data.runtimeType}', name: 'PaginatedBloc');
    if (data is Query$GetUpcomingEpisodes) {
      _hasNextPage = data.Page!.pageInfo!.hasNextPage!;
      _list.addAll(data.Page!.media! as Iterable<Q?>);
    }
    // TODO: Add more options
  }

  Future<QueryResult<Object>> _selectQuery(GraphQLClient client) {
    dev.log('Selecting query: ${E.runtimeType}', name: 'PaginatedBloc');
    if (E is UpcomingEpisode) {
      return client.query$GetUpcomingEpisodes(
        Options$Query$GetUpcomingEpisodes(
          variables: Variables$Query$GetUpcomingEpisodes(
            page: _page,
          ),
        ),
      );
    }

    return client.query$GetTrendingAnime(
      Options$Query$GetTrendingAnime(
        variables: Variables$Query$GetTrendingAnime(
          page: _page,
        ),
      ),
    );

    // switch(T) {
    //   case UpcomingEpisode():
    //     return client.query$GetUpcomingEpisodes(
    //       Options$Query$GetUpcomingEpisodes(
    //         variables: Variables$Query$GetUpcomingEpisodes(
    //           page: _page,
    //         ),
    //       ),
    //     );
    //   case TrendingAnime():
    //     return client.query$GetTrendingAnime(
    //       Options$Query$GetTrendingAnime(
    //         variables: Variables$Query$GetTrendingAnime(
    //           page: _page,
    //         ),
    //       ),
    //     );
    //   default:
    //     return client.query$GetTrendingAnime(
    //       Options$Query$GetTrendingAnime(
    //         variables: Variables$Query$GetTrendingAnime(
    //           page: _page,
    //         ),
    //       ),
    //     );
    // }
  }

  @override
  void onTransition(Transition<PaginatedDataEvent, PaginatedDataState> transition) {
    dev.log(transition.toString(), name: 'PaginatedBloc');
    super.onTransition(transition);
  }
}

abstract class PaginatedDataType {}

class UpcomingEpisode extends PaginatedDataType {}

class TrendingAnime extends PaginatedDataType {}

class RecommendedAnime extends PaginatedDataType {}

// enum PaginatedDataType {
//   upcomingEpisode, trendingAnime, recommendedAnime, trendingManga, recommendedManga,
// }
