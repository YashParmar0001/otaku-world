import 'package:flutter/material.dart';

import '../custom_chips.dart';
import '../custom_choice_chip.dart';

class StreamingOnChips extends StatelessWidget {
  const StreamingOnChips({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomChips(
      title: "Streaming On",
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
