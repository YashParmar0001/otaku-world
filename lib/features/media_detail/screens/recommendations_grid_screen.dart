import 'package:flutter/material.dart';
import 'package:otaku_world/core/ui/media_section/media_grid_screen.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';

class RecommendationsGridScreen extends StatelessWidget {
  const RecommendationsGridScreen({super.key, required this.mediaType});

  final Enum$MediaType mediaType;

  @override
  Widget build(BuildContext context) {
    return MediaGridScreen(
      mediaType: mediaType,
      appbarTitle: 'Recommendations',
    );
  }
}
