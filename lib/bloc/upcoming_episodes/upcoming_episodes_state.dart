part of 'upcoming_episodes_bloc.dart';

abstract class UpcomingEpisodesState extends Equatable {
  const UpcomingEpisodesState();

  @override
  List<Object> get props => [];
}

class UpcomingEpisodesInitial extends UpcomingEpisodesState {}

class UpcomingEpisodesLoading extends UpcomingEpisodesState {}

class UpcomingEpisodesLoaded extends UpcomingEpisodesState {
  const UpcomingEpisodesLoaded({
    required this.episodes,
    required this.hasNextPage,
  });

  final List<Query$GetUpcomingEpisodes$Page$media?> episodes;
  final bool hasNextPage;

  @override
  List<Object> get props => [episodes, hasNextPage];
}

class UpcomingEpisodesError extends UpcomingEpisodesState {
  const UpcomingEpisodesError(this.message);

  final String message;
}
