import 'dart:async';
import 'dart:developer' as dev;

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

part 'paginated_data_event.dart';

part 'paginated_data_state.dart';

abstract class PaginatedDataBloc<Q, E>
    extends Bloc<PaginatedDataEvent, PaginatedDataState> {
  PaginatedDataBloc() : super(PaginatedDataInitial()) {
    on<LoadData>(
      _onLoadData,
      transformer: droppable(),
    );
  }

  var page = 1;
  var hasNextPage = true;
  final List<E?> list = [];

  Future<void> _onLoadData(
    LoadData event,
    Emitter<PaginatedDataState> emit,
  ) async {
    if (page == 1) emit(PaginatedDataLoading());
    // This is for checking shimmer effect (Uncomment below code)
    // await Future.delayed(const Duration(seconds: 20));

    final response = await loadData(event.client);

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
      processData(response);

      emit(PaginatedDataLoaded<E?>(
        list: List.from(list),
        hasNextPage: hasNextPage,
      ));
    }
  }

  Future<QueryResult<Q>> loadData(GraphQLClient client);

  void processData(QueryResult<Q> response);



  @override
  void onTransition(
      Transition<PaginatedDataEvent, PaginatedDataState> transition) {
    dev.log(transition.toString(), name: 'PaginatedBloc');
    super.onTransition(transition);
  }
}
