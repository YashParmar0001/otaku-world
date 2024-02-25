import 'package:flutter/material.dart';

import '../custom_chips.dart';
import '../custom_choice_chip.dart';

class MangaFormatChips extends StatelessWidget {
  const MangaFormatChips({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomChips(
      title: "Format",
      chipList: [
        CustomChoiceChip(
          label: "Manga",
          value: "manga",
        ),
        CustomChoiceChip(
          label: "Light Novel",
          value: "Light Novel",
        ),
        CustomChoiceChip(
          label: "One Shot",
          value: "One Shot",
        ),
      ],
    );
  }
}
