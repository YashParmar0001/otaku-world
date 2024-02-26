import 'package:flutter/material.dart';
import 'package:otaku_world/core/ui/filters/custom_check_box.dart';

class AnimeCheckBoxOptions extends StatelessWidget {
  const AnimeCheckBoxOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomCheckBox(
          label: "Hide Anime on My List",
          value: "value",
        ),
        CustomCheckBox(
          label: "Only show Anime on My List",
          value: "value",
        ),
        CustomCheckBox(
          label: "Adult",
          value: "value",
        ),
      ],
    );
  }
}
