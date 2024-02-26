import 'package:flutter/material.dart';

import '../custom_chips.dart';
import '../custom_choice_chip.dart';

class CountryOfOriginChips extends StatelessWidget {
  const CountryOfOriginChips({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomChips(
      title: "Country of Origin",
      chipList: [
        CustomChoiceChip(
          label: "Japan",
          value: "japan",
        ),
        CustomChoiceChip(
          label: "China",
          value: "china",
        ),
        CustomChoiceChip(
          label: "South Korea",
          value: "South Korea",
        ),
        CustomChoiceChip(
          label: "Taiwan",
          value: "Taiwan",
        ),
      ],
    );
  }
}
