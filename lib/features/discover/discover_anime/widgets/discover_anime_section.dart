import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../bloc/all_time_popular_anime/all_time_popular_anime_bloc.dart';
import '../../../../bloc/recommended_anime/recommended_anime_bloc.dart';
import '../../../../bloc/top_100_anime/top_100_anime_bloc.dart';
import '../../../../bloc/top_airing_anime/top_airing_anime_bloc.dart';
import '../../../../bloc/top_upcoming_anime/top_upcoming_anime_bloc.dart';
import '../../../../bloc/trending_anime/trending_anime_bloc.dart';
import '../../../../core/ui/media_section/media_cards.dart';
import '../../../../core/ui/media_section/media_section.dart';

class DiscoverAnimeSection extends StatelessWidget {
  const DiscoverAnimeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MediaSection<TrendingAnimeBloc>(
          label: 'Trending now',
          onMorePressed: () {
            context.push('/trending-anime');
          },
          onSliderPressed: () {
            context.push('/trending-anime-slider');
          },
          heroTag: 'trending_anime',
        ),
        const SizedBox(
          height: 15,
        ),
        MediaSection<RecommendedAnimeBloc>(
          label: 'Recommended',
          onMorePressed: () {
            context.push('/recommended-anime');
          },
          onSliderPressed: () {
            context.push('/recommended-anime-slider');
          },
          heroTag: 'recommended_anime',
        ),
        const SizedBox(
          height: 15,
        ),
        MediaSection<TopAiringAnimeBloc>(
          label: 'Top Airing',
          onMorePressed: () {
            context.push('/top-airing-anime');
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
            context.push('/top-upcoming-anime');
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
            context.push('/all-time-popular-anime');
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
            context.push('/top-anime');
          },
          heroTag: 'top_100_anime',
        ),
        const SizedBox(
          height: 15,
        )
      ],
    );
  }
}
