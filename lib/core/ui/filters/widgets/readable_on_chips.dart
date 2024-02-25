import 'package:flutter/material.dart';

import '../custom_chips.dart';
import '../custom_choice_chip.dart';

class ReadableOnChips extends StatelessWidget {
  const ReadableOnChips({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomChips(
      title: "Readable On",
      chipList: [
        CustomChoiceChip(
          label: "Crunchyroll",
          value: "Crunchyroll",
        ),
        CustomChoiceChip(
          label: "Netflix",
          value: "Netflix",
        ),
        CustomChoiceChip(
          label: "Hulu",
          value: "Hulu",
        ),
        CustomChoiceChip(
          label: "YouTube",
          value: "YouTube",
        ),
      ],
    );
  }
}
