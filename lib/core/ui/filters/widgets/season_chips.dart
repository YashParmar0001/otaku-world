import 'package:flutter/material.dart';
import 'package:otaku_world/core/ui/filters/custom_chips.dart';
import 'package:otaku_world/core/ui/filters/custom_choice_chip.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/utils/formatting_utils.dart';

class SeasonChips extends StatelessWidget {
  const SeasonChips({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomChips(
      title: 'Season',
      chipList: Enum$MediaSeason.values
          .map(
            (s) {
              final season = FormattingUtils.getSeason(s);
              if (season == 'Unknown') return const SizedBox();
              return CustomChoiceChip(
                label: season,
                value: season,
              );
            }
          )
          .toList(),
    );
  }
}
