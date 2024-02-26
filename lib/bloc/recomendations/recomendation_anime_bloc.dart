import 'dart:developer' as dev;

import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/details/recomendation.graphql.dart';

import '../../graphql/__generated/graphql/fragments.graphql.dart';
import '../paginated_data/paginated_data_bloc.dart';

class RecommendationAnimeBloc
    extends PaginatedDataBloc<Query$GetRecommendation, Fragment$MediaShort> {
  late int id;

  void setId(int id) {
    this.id = id;
    dev.log("Recommendation id : $id", name: "Recomendations Anime");
  }

  @override
  Future<QueryResult<Query$GetRecommendation>> loadData(GraphQLClient client) {
    return client.query$GetRecommendation(
      Options$Query$GetRecommendation(
        cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
        variables: Variables$Query$GetRecommendation(
          id: id,
          page: page,
        ),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$GetRecommendation> response) {
    final data = response.parsedData!;
    hasNextPage = data.Media!.recommendations!.pageInfo!.hasNextPage!;
    dev.log('Page: $page', name: 'Recommendation Anime Bloc');
    page++;
    list.addAll(data.Media!.recommendations!.edges!
        .map((e) => e!.node!.mediaRecommendation)
        .toList());
    dev.log('Episodes list size: ${list.length}',
        name: 'Recommendation Anime Bloc');
  }
}
