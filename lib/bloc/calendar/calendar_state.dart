part of 'calendar_bloc.dart';

abstract class CalendarState extends Equatable {
  const CalendarState();
  @override
  List<Object> get props => [];
}

class CalendarInitial extends CalendarState {}

class CalendarLoading extends CalendarState {}

class CalendarLoaded extends CalendarState{
  const CalendarLoaded({
    required this.list,
});
  final List<Query$GetCalendarDay$Page$airingSchedules?> list;

  @override
  List<Object> get props => [list];
}

class CalendarError extends CalendarState {
  const CalendarError(this.message);

  final String message;
}
