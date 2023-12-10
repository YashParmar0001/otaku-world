part of 'paginated_data_bloc.dart';

abstract class PaginatedDataState extends Equatable {
  const PaginatedDataState();

  @override
  List<Object> get props => [];
}

class PaginatedDataInitial extends PaginatedDataState {

}

class PaginatedDataLoading extends PaginatedDataState {}

class PaginatedDataLoaded<T> extends PaginatedDataState {
  const PaginatedDataLoaded({
    required this.episodes,
    required this.hasNextPage,
  });

  final List<T?> episodes;
  final bool hasNextPage;

  @override
  List<Object> get props => [episodes, hasNextPage];
}

class PaginatedDataError extends PaginatedDataState {
  const PaginatedDataError(this.message);

  final String message;
}
