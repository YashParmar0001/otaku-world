part of 'day_bloc.dart';

abstract class DayEvent {
  const DayEvent();
}

class ResetDay extends DayEvent {}

class RefreshDay extends DayEvent {
  const RefreshDay(this.client);

  final GraphQLClient client;
}

class LoadDay extends DayEvent {
  const LoadDay(this.client);

  final GraphQLClient client;
}
