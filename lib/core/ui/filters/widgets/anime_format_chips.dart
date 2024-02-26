import 'package:flutter/material.dart';

import '../custom_chips.dart';
import '../custom_choice_chip.dart';

class AnimeFormatChips extends StatelessWidget {
  const AnimeFormatChips({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomChips(
      title: "Format",
      chipList: [
        CustomChoiceChip(
          label: "TV",
          value: "TV",
        ),
        CustomChoiceChip(
          label: "Movie",
          value: "movie",
        ),
        CustomChoiceChip(
          label: "TV Short",
          value: "TV Short",
        ),
        CustomChoiceChip(
          label: "Special",
          value: "special",
        ),
        CustomChoiceChip(
          label: "ONA",
          value: "ONA",
        ),
      ],
    );
  }
}
