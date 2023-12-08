import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

part 'graphql_client_state.dart';

class GraphqlClientCubit extends Cubit<GraphqlClientState> {
  GraphqlClientCubit() : super(GraphqlClientInitial());

  void reset() {
    emit(GraphqlClientInitial());
  }

  void initializeGraphqlClient(String accessToken) {
    final link = HttpLink(
      'https://graphql.anilist.co',
      defaultHeaders: {'Authorization': 'Bearer $accessToken'},
    );

    emit(GraphqlClientInitialized(
      GraphQLClient(
        link: link,
        cache: GraphQLCache(),
      ),
    ));
  }
}
