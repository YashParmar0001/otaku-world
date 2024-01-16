import 'dart:developer' as dev;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otaku_world/bloc/calendar/calendar_bloc.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/core/ui/shimmers/calendar_shimmer_card.dart';
import 'package:otaku_world/core/ui/shimmers/shimmer_list.dart';
import 'package:otaku_world/core/ui/simple_app_bar.dart';
import 'package:otaku_world/features/calendar/widgets/calendar_card.dart';
import 'package:otaku_world/generated/assets.dart';
import 'package:otaku_world/graphql/__generated/graphql/calendar/calendar.graphql.dart';
import 'package:otaku_world/theme/colors.dart';

class CalendarScreen extends HookWidget {
  CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<DateTime> dates = getWeekDaysList();
    final tabController = useTabController(initialLength: 7);
    final client =
        (context.read<GraphqlClientCubit>().state as GraphqlClientInitialized)
            .client;

    useEffect(() {
      context.read<CalendarBloc>().add(
          LoadCalendarDay(date: dates[tabController.index], client: client));
      tabController.addListener(() {
        // dev.log('Tab changed: ${tabController.index}', name: 'CalendarTab');
        // context.read<CalendarBloc>().add(
        //     LoadCalendarDay(date: dates[tabController.index], client: client));
      });
      return null;
    });

    return DefaultTabController(
      length: 7,
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
                    // showSnackBar(context, 'Coming soon...');
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
                tabController.addListener(() {
                  if (!tabController.indexIsChanging) {}
                });
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: TabBar(
                        isScrollable: false,
                        dividerHeight: 0,
                        controller: tabController,
                        // tabAlignment: TabAlignment.start,
                        onTap: (index) {
                          context.read<CalendarBloc>().add(LoadCalendarDay(
                              date: dates[index], client: client));
                        },
                        labelPadding: EdgeInsets.symmetric(
                            horizontal:
                                ((MediaQuery.of(context).size.width - 10) / 7 -
                                        ((MediaQuery.of(context).size.width <
                                                500)
                                            ? 40
                                            : 100)) /
                                    2),
                        // indicatorSize: TabBarIndicatorSize.tab,
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
                            tabController: tabController),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: TabBarView(
                        physics: const NeverScrollableScrollPhysics(),
                        controller: tabController,
                        children: List.generate(
                          7,
                          (index) {
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
                              }),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                );
              })),
    );
  }

  Widget _buildCalendarCardsList(
      List<Query$GetCalendarDay$Page$airingSchedules?> schedules) {
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

  List<DateTime> getWeekDaysList() {
    DateTime nowDate = DateTime.now();
    DateTime today =
        DateTime(nowDate.year, nowDate.month, nowDate.day, 0, 0, 0);

    List<DateTime> dates = [
      for (var i = 0; i < 7; i++) today.add(Duration(days: i))
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
