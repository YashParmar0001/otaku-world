import 'dart:developer' as dev;

import 'package:bloc/bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/search/search_base/search_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/search/search_media.graphql.dart';

class SearchAnimeBloc extends SearchBloc<Query$SearchMedia, Fragment$SearchResultMedia> {
  @override
  Future<QueryResult<Query$SearchMedia>> loadData(GraphQLClient client, String search,) {
    return client.query$SearchMedia(
      Options$Query$SearchMedia(
        variables: Variables$Query$SearchMedia(
          page: page,
          search: search,
          type: Enum$MediaType.ANIME,
        ),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$SearchMedia> response) {
    final data = response.parsedData!;
    hasNextPage = data.Page!.pageInfo!.hasNextPage!;
    dev.log('Page: $page', name: 'SearchAnimeBloc');
    page++;
    list.addAll(data.Page!.media!);
    dev.log('Media list size: ${list.length}', name: 'SearchAnimeBloc');
  }

  @override
  void onTransition(Transition<SearchEvent, SearchState> transition) {
    dev.log(transition.toString(), name: 'SearchAnimeBloc');
    super.onTransition(transition);
  }

}