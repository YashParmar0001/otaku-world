part of 'upcoming_episodes_bloc.dart';

abstract class UpcomingEpisodesEvent extends Equatable {
  const UpcomingEpisodesEvent();

  @override
  List<Object?> get props => [];
}

class LoadUpcomingEpisodes extends UpcomingEpisodesEvent {
  const LoadUpcomingEpisodes(this.client);

  final GraphQLClient client;
}
