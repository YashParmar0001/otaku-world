import 'dart:developer' as dev;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/calendar/calendar_bloc.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/core/ui/appbars/simple_app_bar.dart';
import 'package:otaku_world/core/ui/shimmers/calendar_shimmer_card.dart';
import 'package:otaku_world/core/ui/shimmers/shimmer_list.dart';
import 'package:otaku_world/features/calendar/widgets/calendar_card.dart';
import 'package:otaku_world/generated/assets.dart';
import 'package:otaku_world/graphql/__generated/graphql/calendar/calendar.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
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
    List<DateTime> dates = getWeekDaysList();
    // final calendarBloc0 = CalendarBloc();
    // final calendarBloc1 = CalendarBloc();
    // final calendarBloc2 = CalendarBloc();
    // final calendarBloc3 = CalendarBloc();
    // final calendarBloc4 = CalendarBloc();
    // final calendarBloc5 = CalendarBloc();
    // final calendarBloc6 = CalendarBloc();
    final tabController = useTabController(
      initialLength: 7,
      initialIndex: 0,
    );
    final client =
        (context.read<GraphqlClientCubit>().state as GraphqlClientInitialized)
            .client;

    useEffect(
      () {
        context.read<CalendarBloc>().add(
              LoadCalendarDay(date: dates[tabController.index], client: client),
            );
        tabController.addListener(
          () {
            // dev.log('Tab changed: ${tabController.index}', name: 'CalendarTab');
            // context.read<CalendarBloc>().add(
            //     LoadCalendarDay(date: dates[tabController.index], client: client));
          },
        );
        return null;
      },
    );

    dev.log(tabController.index.toString());
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
              child: InkWell(
                onTap: () {
                  _buildCalendar();
                },
                borderRadius: BorderRadius.circular(50),
                child: SvgPicture.asset(Assets.iconsFilterVertical),
              ),
            ),
          ],
        ),
        body: AnimatedBuilder(
          animation: tabController,
          builder: (BuildContext context, Widget? child) {
            return Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: TabBar(
                    isScrollable: false,
                    dividerHeight: 0,
                    controller: tabController,
                    onTap: (index) {
                      context.read<CalendarBloc>().add(
                          LoadCalendarDay(date: dates[index], client: client));
                    },
                    labelPadding: EdgeInsets.symmetric(
                      horizontal:
                          ((MediaQuery.of(context).size.width - 10) / 7 -
                                  ((MediaQuery.of(context).size.width < 500)
                                      ? 40
                                      : 100)) /
                              2,
                    ),
                    indicator: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                          width: 1,
                          color: AppColors.white.withOpacity(0.0),
                        ),
                      ),
                      gradient: const LinearGradient(
                        colors: [
                          AppColors.sunsetOrange,
                          AppColors.japaneseIndigo,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    tabs: _buildListTabs(
                      context: context,
                      dates: dates,
                      tabController: tabController,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // Text("${selectedCalendarDate.day} ${selectedCalendarDate.month}, ${selectedCalendarDate.year}", style: TextStyle(
                //   color: AppColors.sunsetOrange,
                // ),),
                Expanded(
                  child: TabBarView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: tabController,
                    // children: [
                    //   _buildTabBarView(
                    //     index: 0,
                    //     bloc: calendarBloc0,
                    //     dates: dates,
                    //     client: client,
                    //   ),
                    //   _buildTabBarView(
                    //     index: 1,
                    //     bloc: calendarBloc1,
                    //     dates: dates,
                    //     client: client,
                    //   ),
                    //   _buildTabBarView(
                    //     index: 2,
                    //     bloc: calendarBloc2,
                    //     dates: dates,
                    //     client: client,
                    //   ),
                    //   _buildTabBarView(
                    //     index: 3,
                    //     bloc: calendarBloc3,
                    //     dates: dates,
                    //     client: client,
                    //   ),
                    //   _buildTabBarView(
                    //     index: 4,
                    //     bloc: calendarBloc4,
                    //     dates: dates,
                    //     client: client,
                    //   ),
                    //   _buildTabBarView(
                    //     index: 5,
                    //     bloc: calendarBloc5,
                    //     dates: dates,
                    //     client: client,
                    //   ),
                    //   _buildTabBarView(
                    //     index: 6,
                    //     bloc: calendarBloc6,
                    //     dates: dates,
                    //     client: client,
                    //   ),
                    // ],
                    children: List.generate(
                      7,
                      (index) {
                        // context.read<CalendarBloc>().add(LoadCalendarDay(
                        //     date: dates[index], client: client));
                        return SizedBox(
                          child: BlocBuilder<CalendarBloc, CalendarState>(
                            builder: (context, state) {
                              if (state is CalendarLoading) {
                                return ShimmerList(
                                  child: const CalendarShimmerCard(),
                                );
                              } else if (state is CalendarError) {
                                return Text(state.message);
                              } else if (state is CalendarLoaded) {
                                return _buildCalendarCardsList(state.list);
                              } else {
                                return const Center(
                                  child: Text('Unknown state'),
                                );
                              }
                            },
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildTabBarView(
      {required int index,
      required CalendarBloc bloc,
      required List<DateTime> dates,
      required client}) {
    bloc.add(LoadCalendarDay(date: dates[index], client: client));
    return SizedBox(
      child: BlocBuilder<CalendarBloc, CalendarState>(
        bloc: bloc,
        builder: (context, state) {
          if (state is CalendarLoading) {
            return ShimmerList(
              child: const CalendarShimmerCard(),
            );
          } else if (state is CalendarError) {
            dev.log(state.message);
            return Text(state.message);
          } else if (state is CalendarLoaded) {
            return _buildCalendarCardsList(state.list);
          } else {
            return const Center(
              child: Text('Unknown state'),
            );
          }
        },
      ),
    );
  }

  Widget _buildCalendarCardsList(
      List<Fragment$CalendarAiringSchedule?> schedules) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: schedules.length,
      itemBuilder: (context, index) {
        return CalendarCard(airingSchedule: schedules[index]!);
      },
    );
  }

  List<Tab> _buildListTabs({
    required BuildContext context,
    required List<DateTime> dates,
    required TabController tabController,
  }) {
    return List.generate(
      dates.length,
      (index) {
        return _buildDate(
          context: context,
          index: index,
          weekDay: dayNames[dates[index].weekday - 1],
          date: dates[index].day,
          // dates: dates,
          tabController: tabController,
        );
      },
    );
  }

  Tab _buildDate({
    required BuildContext context,
    required int index,
    required String weekDay,
    required int date,
    // required DateTime dates,
    required TabController tabController,
  }) {
    final double tabWidth =
        (MediaQuery.of(context).size.width < 500) ? 40 : 100;
    final double tabHeight =
        (MediaQuery.of(context).size.width < 500) ? 75 : 50;
    final isSelected = index == tabController.index;
    return Tab(
      height: tabHeight,
      child: Container(
        width: tabWidth,
        height: tabHeight,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(
              width: 1,
              color: (isSelected)
                  ? AppColors.white.withOpacity(0.0)
                  : AppColors.white.withOpacity(0.8),
            ),
          ),
        ),
        child: (MediaQuery.of(context).size.width < 500)
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    weekDay,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontFamily: 'Poppins',
                          color: (isSelected)
                              ? AppColors.white
                              : AppColors.white.withOpacity(0.8),
                          fontWeight:
                              (isSelected) ? FontWeight.w600 : FontWeight.w400,
                        ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    date.toString(),
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontFamily: 'Poppins',
                          fontSize: (isSelected) ? 16 : 14,
                          color: (isSelected)
                              ? AppColors.white
                              : AppColors.white.withOpacity(0.8),
                          fontWeight:
                              (isSelected) ? FontWeight.w600 : FontWeight.w400,
                        ),
                  ),
                ],
              )
            : Padding(
                padding: EdgeInsets.all((isSelected) ? 10 : 11),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      date.toString(),
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(
                            fontFamily: 'Poppins',
                            fontSize: (isSelected) ? 28 : 26,
                            color: (isSelected)
                                ? AppColors.white
                                : AppColors.white.withOpacity(0.8),
                            fontWeight: (isSelected)
                                ? FontWeight.w600
                                : FontWeight.w400,
                          ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      weekDay,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontFamily: 'Poppins',
                            color: (isSelected)
                                ? AppColors.white
                                : AppColors.white.withOpacity(0.8),
                            fontWeight: (isSelected)
                                ? FontWeight.w600
                                : FontWeight.w400,
                          ),
                    ),
                  ],
                ),
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

  List<DateTime> getWeekDaysList() {
    // DateTime nowDate = DateTime.now();
    DateTime selectedDay = DateTime(selectedCalendarDay.year,
        selectedCalendarDay.month, selectedCalendarDay.day, 0, 0, 0);

    List<DateTime> dates = [
      for (var i = 0; i < 7; i++) selectedDay.add(Duration(days: i))
    ];
    return dates;
  }

  final List<String> dayNames = [
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
    'Sat',
    'Sun'
  ];
}
