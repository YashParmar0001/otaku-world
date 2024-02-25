import 'package:flutter/material.dart';

import '../custom_chips.dart';
import '../custom_choice_chip.dart';

class MangaPublishingStatusChips extends StatelessWidget {
  const MangaPublishingStatusChips({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomChips(
      title: "Publishing Status",
      chipList: [
        CustomChoiceChip(
          label: "Releasing",
          value: "releasing",
        ),
        CustomChoiceChip(
          label: "Finished",
          value: "finished",
        ),
        CustomChoiceChip(
          label: "Cancelled",
          value: "cancelled",
        ),
        CustomChoiceChip(
          label: "Hiatus",
          value: "hiatus",
        ),
      ],
    );
  }
}
