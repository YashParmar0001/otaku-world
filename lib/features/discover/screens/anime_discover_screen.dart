import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/all_time_popular_anime/all_time_popular_anime_bloc.dart';
import 'package:otaku_world/bloc/top_100_anime/top_100_anime_bloc.dart';
import 'package:otaku_world/bloc/top_airing_anime/top_airing_anime_bloc.dart';
import 'package:otaku_world/bloc/top_upcoming_anime/top_upcoming_anime_bloc.dart';
import 'package:otaku_world/core/ui/appbars/simple_app_bar.dart';
import 'package:otaku_world/core/ui/discover_header.dart';
import 'package:otaku_world/core/ui/media_section/media_cards.dart';
import 'package:otaku_world/features/discover/widgets/search_option.dart';

import '../../../bloc/recommended_anime/recommended_anime_bloc.dart';
import '../../../bloc/trending_anime/trending_anime_bloc.dart';
import '../../../core/ui/media_section/media_section.dart';

class AnimeDiscoverScreen extends HookWidget {
  const AnimeDiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const SimpleAppBar(title: "Anime"),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: DiscoverHeader(
                title: "Uncover the wonders of \nAnime",
                subtitle: "Explore a Universe of Endless Possibilities,"
                    " Unveiling Hidden Gems and Beloved Classics",
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: SearchOption(
                onPressedFilters: () {
                  context.push('/anime-filters-discover');
                },
                clearSearch: () {},
                onSubmitted: (value) {},
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            MediaSection<TrendingAnimeBloc>(
              label: 'Trending now',
              onMorePressed: () {
                context.push('/trending_anime');
              },
              onSliderPressed: () {
                context.push('/trending_anime_slider');
              },
              heroTag: 'trending_anime',
            ),
            const SizedBox(
              height: 15,
            ),
            MediaSection<RecommendedAnimeBloc>(
              label: 'Recommended',
              onMorePressed: () {
                context.push('/recommended_anime');
              },
              onSliderPressed: () {
                context.push('/recommended_anime_slider');
              },
              heroTag: 'recommended_anime',
            ),
            const SizedBox(
              height: 15,
            ),
            MediaSection<TopAiringAnimeBloc>(
              label: 'Top Airing',
              onMorePressed: () {
                context.push('/top-airing-anime-screen');
              },
              onSliderPressed: () {
                context.push('/top-airing-anime-slider');
              },
              heroTag: 'top_airing_anime',
            ),
            const SizedBox(
              height: 15,
            ),
            MediaSection<TopUpcomingAnimeBloc>(
              label: 'Top Upcoming',
              onMorePressed: () {
                context.push('/top-upcoming-anime-screen');
              },
              onSliderPressed: () {
                context.push('/top-upcoming-anime-slider');
              },
              heroTag: 'top_upcoming_anime',
            ),
            const SizedBox(
              height: 15,
            ),
            MediaSection<AllTimePopularAnimeBloc>(
              label: 'All Time Popular',
              onMorePressed: () {
                context.push('/all-time-popular-anime-screen');
              },
              onSliderPressed: () {
                context.push('/all-time-popular-anime-slider');
              },
              heroTag: 'all_time_popular_anime',
            ),
            const SizedBox(
              height: 15,
            ),
            MediaCards<Top100AnimeBloc>(
              label: 'Top 100 Anime',
              onMorePressed: () {
                context.push('/view-all-top-anime');
              },
              heroTag: 'top_100_anime',
            ),
            const SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}
