import 'package:flutter/material.dart';

import '../custom_chips.dart';
import '../custom_choice_chip.dart';

class AnimeAiringStatusChips extends StatelessWidget {
  const AnimeAiringStatusChips({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomChips(
      title: "Airing Status",
      chipList: [
        CustomChoiceChip(
          label: "Airing",
          value: "airing",
        ),
        CustomChoiceChip(
          label: "Finished",
          value: "finished",
        ),
        CustomChoiceChip(
          label: "Not yet Aired",
          value: "Not yet Aired",
        ),
        CustomChoiceChip(
          label: "Cancelled",
          value: "cancelled",
        ),
      ],
    );
  }
}
