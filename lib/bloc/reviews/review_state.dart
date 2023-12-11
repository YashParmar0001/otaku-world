part of 'review_bloc.dart';

abstract class ReviewState extends Equatable {
  const ReviewState();

  @override
  List<Object> get props => [];
}

class ReviewInitial extends ReviewState {}

class ReviewsLoading extends ReviewState {}

class ReviewsLoaded extends ReviewState {
  const ReviewsLoaded({
    required this.reviews,
    required this.hasNextPage,
  });

  final List<Query$GetReviews$Page$reviews?> reviews;
  final bool hasNextPage;

  @override
  List<Object> get props => [reviews, hasNextPage];
}

class ReviewsError extends ReviewState {
  const ReviewsError(this.message);

  final String message;
}
