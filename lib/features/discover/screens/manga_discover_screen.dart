import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/all_time_popular_manga/all_time_popular_manga.dart';
import 'package:otaku_world/bloc/top_100_manga/top_100_manga.dart';
import 'package:otaku_world/core/ui/appbars/simple_app_bar.dart';
import 'package:otaku_world/core/ui/discover_header.dart';

import '../../../bloc/recommended_manga/recommended_manga_bloc.dart';
import '../../../bloc/trending_manga/trending_manga_bloc.dart';
import '../../../core/ui/media_section/media_cards.dart';
import '../../../core/ui/media_section/media_section.dart';
import '../widgets/search_option.dart';

class MangaDiscoverScreen extends StatelessWidget {
  const MangaDiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const SimpleAppBar(title: "Manga"),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: DiscoverHeader(
                title: "Unravel the World of \nManga",
                subtitle: "Dive into a Universe of Captivating "
                    "Narratives and Artistry",
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
                  context.push('/manga-filters-discover');
                },
                clearSearch: () {},
                onSubmitted: (value) {},
                onChanged: (p0) {

                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            MediaSection<TrendingMangaBloc>(
              label: 'Trending now',
              onMorePressed: () {
                context.push('/trending_manga');
              },
              onSliderPressed: () {
                context.push('/trending_manga_slider');
              },
              heroTag: 'trending_manga',
            ),
            const SizedBox(
              height: 15,
            ),
            MediaSection<RecommendedMangaBloc>(
              label: 'Recommended',
              onMorePressed: () {
                context.push('/recommended_manga');
              },
              onSliderPressed: () {
                context.push('/recommended_manga_slider');
              },
              heroTag: 'recommended_manga',
            ),
            const SizedBox(
              height: 15,
            ),
            MediaSection<AllTimePopularMangaBloc>(
              label: 'All Time Popular',
              onMorePressed: () {
                context.push('/all-time-popular-manga-screen');
              },
              onSliderPressed: () {
                context.push('/all-time-popular-manga-slider');
              },
              heroTag: 'all_time_popular_manga',
            ),
            const SizedBox(
              height: 15,
            ),
            MediaCards<Top100MangaBloc>(
              label: 'Top 100 Anime',
              onMorePressed: () {
                context.push('/view-all-top-manga');
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
