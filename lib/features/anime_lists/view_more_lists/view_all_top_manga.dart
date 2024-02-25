import 'package:flutter/material.dart';
import 'package:otaku_world/bloc/top_100_manga/top_100_manga.dart';

import '../../../core/ui/media_section/media_grid_screen.dart';
import '../../../graphql/__generated/graphql/schema.graphql.dart';

class ViewAllTopManga extends StatelessWidget {
  const ViewAllTopManga({super.key});

  @override
  Widget build(BuildContext context) {
    return const MediaGridScreen<Top100MangaBloc>(
      mediaType: Enum$MediaType.MANGA,
      appbarTitle: "Top 100 Anime",
      isTop100: true,
    );
  }
}
