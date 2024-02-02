import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/calendar/week_calendar/week_calendar_bloc.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/core/ui/appbars/simple_app_bar.dart';
import 'package:otaku_world/core/ui/error_text.dart';
import 'package:otaku_world/features/calendar/widgets/calendar_tab_bar.dart';
import 'package:otaku_world/features/calendar/widgets/episodes_list.dart';
import 'package:otaku_world/generated/assets.dart';
import 'package:otaku_world/theme/colors.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarScreen extends StatefulHookWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime selectedCalendarDay = DateTime.now();
  DateTime focusedCalendarDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final tabController = useTabController(
      initialLength: 7,
      initialIndex: 0,
    );
    final client =
        (context.read<GraphqlClientCubit>().state as GraphqlClientInitialized)
            .client;

    return DefaultTabController(
      length: 7,
      initialIndex: 0,
      child: Scaffold(
        appBar: SimpleAppBar(
          title: 'Calendar',
          actions: [
            Padding(
              padding: const EdgeInsets.only(
                right: 16,
              ),
              child: IconButton(
                onPressed: () {
                  _buildCalendar();
                },
                icon: SvgPicture.asset(Assets.iconsFilterVertical),
              ),
            ),
          ],
        ),
        body: BlocBuilder<WeekCalendarBloc, WeekCalendarState>(
          builder: (context, state) {
            if (state is WeekCalendarError) {
              return ErrorText(
                message: state.message,
                onTryAgain: () {},
              );
            } else if (state is WeekCalendarInitialized) {
              return Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  CalendarTabBar(
                    tabController: tabController,
                    dayBlocs: state.days,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: TabBarView(
                      // physics: const NeverScrollableScrollPhysics(),
                      controller: tabController,
                      children: List.generate(
                        7,
                        (index) {
                          return EpisodesList(
                            dayBloc: state.days[index],
                            client: client,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              );
            } else {
              return const Center(
                child: Text('Unknown state'),
              );
            }
          },
        ),
      ),
    );
  }

  void _buildCalendar() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          elevation: 0,
          backgroundColor: AppColors.raisinBlack,
          child: Container(
            height: 360,
            width: 320,
            decoration: BoxDecoration(
              color: AppColors.raisinBlack,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: TableCalendar(
              firstDay: DateTime.now().subtract(const Duration(days: 356)),
              lastDay: DateTime.now().add(const Duration(days: 356)),
              focusedDay: focusedCalendarDate,
              selectedDayPredicate: (currentSelectedDate) {
                return (isSameDay(selectedCalendarDay, currentSelectedDate));
              },
              onDaySelected: (selectedDay, focusedDay) {
                if (!isSameDay(selectedCalendarDay, selectedDay)) {
                  setState(() {
                    selectedCalendarDay = selectedDay;
                  });
                  context.pop();
                }
              },
              startingDayOfWeek: StartingDayOfWeek.monday,
              rowHeight: 40,
              daysOfWeekHeight: 40,
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
                titleTextStyle:
                    Theme.of(context).textTheme.displayLarge!.copyWith(
                          color: AppColors.white,
                        ),
                headerMargin: const EdgeInsets.symmetric(horizontal: 10),
                leftChevronMargin: const EdgeInsets.symmetric(horizontal: 0),
                rightChevronMargin: const EdgeInsets.symmetric(vertical: 0),
                leftChevronIcon: SvgPicture.asset(
                  Assets.iconsArrowLeft,
                  height: 22,
                  width: 26,
                ),
                rightChevronIcon: SvgPicture.asset(
                  Assets.iconsArrowRight,
                  height: 20,
                  width: 20,
                ),
                decoration: const BoxDecoration(
                  border: BorderDirectional(
                    start: BorderSide.none,
                    end: BorderSide.none,
                    top: BorderSide.none,
                    bottom: BorderSide(
                      style: BorderStyle.solid,
                      width: 2,
                      color: AppColors.silver,
                    ),
                  ),
                ),
              ),
              calendarStyle: CalendarStyle(
                todayDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: AppColors.sunsetOrange,
                    width: 1.5,
                  ),
                ),
                selectedDecoration: const BoxDecoration(
                  color: AppColors.sunsetOrange,
                  shape: BoxShape.circle,
                ),
                tablePadding: const EdgeInsets.only(
                  left: 4,
                  right: 4,
                  top: 5,
                ),
                outsideDaysVisible: false,
                defaultTextStyle:
                    Theme.of(context).textTheme.headlineMedium!.copyWith(
                          color: AppColors.white,
                          fontFamily: 'Poppins',
                        ),
              ),
              weekendDays: const [],
              daysOfWeekStyle: DaysOfWeekStyle(
                weekdayStyle:
                    Theme.of(context).textTheme.headlineMedium!.copyWith(
                          color: AppColors.sunsetOrange,
                          fontFamily: 'Poppins',
                        ),
              ),
              calendarBuilders: CalendarBuilders(
                selectedBuilder: (context, date, events) => Container(
                  margin: const EdgeInsets.all(6.0),
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: AppColors.sunsetOrange,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    date.day.toString(),
                    style: const TextStyle(color: AppColors.white),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
