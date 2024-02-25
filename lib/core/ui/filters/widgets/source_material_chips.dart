import 'package:flutter/material.dart';

import '../custom_chips.dart';
import '../custom_choice_chip.dart';

class SourceMaterialChips extends StatelessWidget {
  const SourceMaterialChips({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomChips(
      title: "Source Material",
      chipList: [
        CustomChoiceChip(
          label: "Original",
          value: "Original",
        ),
        CustomChoiceChip(
          label: "Manga",
          value: "manga",
        ),
        CustomChoiceChip(
          label: "Light Novel",
          value: "Light Novel",
        ),
        CustomChoiceChip(
          label: "Video Game",
          value: "Video Game",
        ),
      ],
    );
  }
}
