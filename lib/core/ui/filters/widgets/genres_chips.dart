import 'package:flutter/material.dart';
import 'package:otaku_world/core/ui/filters/custom_chips.dart';
import 'package:otaku_world/core/ui/filters/custom_choice_chip.dart';

class GenresChips extends StatelessWidget {
  const GenresChips({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomChips(
      title: "Genres",
      chipList: [
        CustomChoiceChip(
          label: "Action",
          value: "action",
        ),
        CustomChoiceChip(
          label: "Adventure",
          value: "adventure",
        ),
        CustomChoiceChip(
          label: "Comedy",
          value: "comedy",
        ),
        CustomChoiceChip(
          label: "Fantasy",
          value: "fantasy",
        ),
        CustomChoiceChip(
          label: "Drama",
          value: "drama",
        ),
        CustomChoiceChip(
          label: "Ecchi",
          value: "ecchi",
        ),
        CustomChoiceChip(
          label: "Fantasy",
          value: "fantasy",
        ),
        CustomChoiceChip(
          label: "Sports",
          value: "sports",
        ),
      ],
    );
  }
}
