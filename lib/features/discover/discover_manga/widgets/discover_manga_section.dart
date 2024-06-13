import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../bloc/all_time_popular_manga/all_time_popular_manga_bloc.dart';
import '../../../../bloc/all_time_popular_manga/popular_manhwa_bloc.dart';
import '../../../../bloc/recommended_manga/recommended_manga_bloc.dart';
import '../../../../bloc/top_100_manga/top_100_manga.dart';
import '../../../../bloc/trending_manga/trending_manga_bloc.dart';
import '../../../../core/ui/media_section/media_cards.dart';
import '../../../../core/ui/media_section/media_section.dart';

class DiscoverMangaSection extends StatelessWidget {
  const DiscoverMangaSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MediaSection<TrendingMangaBloc>(
          label: 'Trending now',
          onMorePressed: () {
            context.push('/trending-manga');
          },
          onSliderPressed: () {
            context.push('/trending-manga-slider');
          },
          heroTag: 'trending_manga',
        ),
        const SizedBox(
          height: 15,
        ),
        MediaSection<RecommendedMangaBloc>(
          label: 'Recommended',
          onMorePressed: () {
            context.push('/recommended-manga');
          },
          onSliderPressed: () {
            context.push('/recommended-manga-slider');
          },
          heroTag: 'recommended_manga',
        ),
        const SizedBox(
          height: 15,
        ),
        MediaSection<AllTimePopularMangaBloc>(
          label: 'All Time Popular',
          onMorePressed: () {
            context.push('/all-time-popular-manga');
          },
          onSliderPressed: () {
            context.push('/all-time-popular-manga-slider');
          },
          heroTag: 'all_time_popular_manga',
        ),
        const SizedBox(
          height: 15,
        ),
        MediaSection<PopularManhwaBloc>(
          label: 'Popular Manhwa',
          onMorePressed: () {
            context.push('/popular-manhwa');
          },
          onSliderPressed: () {
            context.push('/popular-manhwa-slider');
          },
          heroTag: 'popular_manhwa',
        ),
        const SizedBox(
          height: 15,
        ),
        MediaCards<Top100MangaBloc>(
          label: 'Top 100 Manga',
          onMorePressed: () {
            context.push('/top-manga');
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
