import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'dart:developer' as dev;
import '../../graphql/__generated/graphql/reviews/reviews.graphql.dart';

part 'review_event.dart';

part 'review_state.dart';

class ReviewBloc extends Bloc<ReviewEvent, ReviewState> {
  ReviewBloc() : super(ReviewInitial()) {
    on<LoadReviews>(
      _onLoadReviews,
      transformer: droppable(),
    );
  }

  var _page = 1;
  var _hasNextPage = true;
  final List<Query$GetReviews$Page$reviews?> _reviews = [];

  FutureOr<void> _onLoadReviews(
    LoadReviews event,
    Emitter<ReviewState> emit,
  ) async {
    if (_page == 1) emit(ReviewsLoading());
    final response =
        await event.client.query$GetReviews(Options$Query$GetReviews(
      variables: Variables$Query$GetReviews(
        page: _page,
      ),
    ));

    if (response.hasException) {
      final exception = response.exception!;

      if (exception.linkException != null) {
        emit(
          const ReviewsError('Please check your internet connection!'),
        );
      } else {
        emit(
          const ReviewsError('Some unexpected error has occurred!'),
        );
      }
    } else {
      final data = response.parsedData!;
      _hasNextPage = data.Page!.pageInfo!.hasNextPage!;
      _page++;
      _reviews.addAll(data.Page!.reviews!);
      emit(
        ReviewsLoaded(
          reviews: List.from(_reviews),
          hasNextPage: _hasNextPage,
        ),
      );
    }
  }


  @override
  void onTransition(
      Transition<ReviewEvent, ReviewState> transition) {
    dev.log(transition.toString(), name: 'ReviewBloc');
    super.onTransition(transition);
  }
}
