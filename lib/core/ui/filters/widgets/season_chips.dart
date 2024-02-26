import 'package:flutter/material.dart';
import 'package:otaku_world/core/ui/filters/custom_chips.dart';
import 'package:otaku_world/core/ui/filters/custom_choice_chip.dart';

class SeasonChips extends StatelessWidget {
  const SeasonChips({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomChips(
      title: "Season",
      chipList: [
        CustomChoiceChip(
          label: "Winter",
          value: "winter",
        ),
        CustomChoiceChip(
          label: "Spring",
          value: "spring",
        ),
        CustomChoiceChip(
          label: "Summer",
          value: "summer",
        ),
        CustomChoiceChip(
          label: "Fall",
          value: "fall",
        ),
      ],
    );
  }
}
