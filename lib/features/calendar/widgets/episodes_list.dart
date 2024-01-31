import 'dart:developer' as dev;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/bloc/calendar/week_calendar/day/day_bloc.dart';
import 'package:otaku_world/core/ui/error_text.dart';

import '../../../core/ui/shimmers/calendar_shimmer_card.dart';
import '../../../core/ui/shimmers/shimmer_list.dart';
import '../../../graphql/__generated/graphql/fragments.graphql.dart';
import 'calendar_card.dart';

class EpisodesList extends StatelessWidget {
  const EpisodesList({super.key, required this.dayBloc});

  final DayBloc dayBloc;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: BlocBuilder<DayBloc, DayState>(
        bloc: dayBloc,
        builder: (context, state) {
          if (state is EpisodesLoading) {
            return const ShimmerList(
              child: CalendarShimmerCard(),
            );
          } else if (state is DayError) {
            return ErrorText(message: state.message, onTryAgain: () {});
          } else if (state is EpisodesLoaded) {
            return _buildCalendarCardsList(state.episodes);
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
    List<Fragment$CalendarAiringSchedule?> schedules,
  ) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: schedules.length,
      itemBuilder: (context, index) {
        return CalendarCard(airingSchedule: schedules[index]!);
      },
    );
  }
}
