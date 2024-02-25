import 'package:flutter/material.dart';
import 'package:otaku_world/bloc/all_time_popular_manga/all_time_popular_manga.dart';

import '../../../core/ui/media_section/media_slider_screen.dart';

class AllTimePopularMangaSlider extends StatelessWidget {
  const AllTimePopularMangaSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return const MediaSliderScreen<AllTimePopularMangaBloc>(
      sectionHeader: 'All Time Popular',
    );
  }
}
