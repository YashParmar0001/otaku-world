import 'package:flutter/material.dart';
import 'package:otaku_world/core/ui/media_section/media_slider_screen.dart';

class RecommendationsSliderScreen extends StatelessWidget {
  const RecommendationsSliderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MediaSliderScreen(sectionHeader: 'Recommendations');
  }
}
