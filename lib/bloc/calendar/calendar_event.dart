part of 'calendar_bloc.dart';

abstract class CalendarEvent extends Equatable {
  const CalendarEvent();

  @override
  List<Object?> get props => [];
}

class LoadCalendarDay extends CalendarEvent {
  const LoadCalendarDay({required this.date, required this.client});
  final DateTime date;
  final GraphQLClient client;
}
