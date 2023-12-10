import 'package:flutter/material.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';

class MediaSection extends StatelessWidget {
  const MediaSection({super.key, required this.label, required this.mediaList});

  final String label;
  final List<Fragment$MediaShort> mediaList;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
