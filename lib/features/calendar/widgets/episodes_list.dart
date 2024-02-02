import 'dart:developer' as dev;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/calendar/week_calendar/day/day_bloc.dart';
import 'package:otaku_world/core/ui/error_text.dart';
import 'package:otaku_world/theme/colors.dart';

import '../../../core/ui/shimmers/calendar_shimmer_card.dart';
import '../../../core/ui/shimmers/shimmer_list.dart';
import '../../../graphql/__generated/graphql/fragments.graphql.dart';
import 'calendar_card.dart';

class EpisodesList extends HookWidget {
  const EpisodesList({
    super.key,
    required this.dayBloc,
    required this.client,
  });

  final DayBloc dayBloc;
  final GraphQLClient client;

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();

    useEffect(() {
      scrollController.addListener(() {
        final maxScroll = scrollController.position.maxScrollExtent;
        final currentScroll = scrollController.position.pixels;

        if (currentScroll == maxScroll) {
          dev.log('Max scrolled', name: 'Media');
          final hasNextPage = (dayBloc.state as EpisodesLoaded).hasNextPage;
          if (hasNextPage) {
            dayBloc.add(LoadDay(client));
          }
        }
      });
      return null;
    }, const []);

    return BlocBuilder<DayBloc, DayState>(
      bloc: dayBloc,
      builder: (context, state) {
        if (state is DayInitial) {
          dayBloc.add(LoadDay(client));
          return const SizedBox();
        } else if (state is EpisodesLoading) {
          return const ShimmerList(
            child: CalendarShimmerCard(),
          );
        } else if (state is DayError) {
          return ErrorText(message: state.message, onTryAgain: () {});
        } else if (state is EpisodesLoaded) {
          dev.log('Rebuilding episodes list', name: 'Calendar');
          return _buildCalendarCardsList(
            state.episodes,
            state.hasNextPage,
            scrollController,
          );
        } else {
          return const Center(
            child: Text('Unknown state'),
          );
        }
      },
    );
  }

  Widget _buildCalendarCardsList(
    List<Fragment$CalendarAiringSchedule?> schedules,
    bool hasNextPage,
    ScrollController controller,
  ) {
    return RefreshIndicator(
      backgroundColor: AppColors.raisinBlack,
      onRefresh: () async {
        dayBloc.add(RefreshDay(client));
      },
      child: CustomScrollView(
        clipBehavior: Clip.none,
        controller: controller,
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => CalendarCard(airingSchedule: schedules[index]!),
              childCount: schedules.length,
            ),
          ),
          if (hasNextPage)
            ...List.generate(
              5,
              (index) => const SliverToBoxAdapter(
                child: CalendarShimmerCard(),
              ),
            ),
        ],
      ),
    );
  }
}
