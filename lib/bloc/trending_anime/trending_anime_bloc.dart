import 'dart:developer' as dev;

import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/home/trending_anime.graphql.dart';

class TrendingAnimeBloc
    extends PaginatedDataBloc<Query$GetTrendingManga, Fragment$MediaShort> {
  @override
  Future<QueryResult<Query$GetTrendingManga>> loadData(GraphQLClient client) {
    return client.query$GetTrendingAnime(
      Options$Query$GetTrendingAnime(
        variables: Variables$Query$GetTrendingAnime(page: page),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$GetTrendingManga> response) {
    final data = response.parsedData!;
    hasNextPage = data.Page!.pageInfo!.hasNextPage!;
    dev.log('Page: $page', name: 'TrendingAnimeBloc');
    page++;
    list.addAll(data.Page!.media!);
    dev.log('Episodes list size: ${list.length}', name: 'TrendingAnimeBloc');
  }
}
