import 'package:flutter/material.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/utils/formatting_utils.dart';

import '../custom_chips.dart';
import '../custom_choice_chip.dart';

class AnimeAiringStatusChips extends StatelessWidget {
  const AnimeAiringStatusChips({super.key});

  final animeStatuses = const [
    Enum$MediaStatus.RELEASING,
    Enum$MediaStatus.FINISHED,
    Enum$MediaStatus.NOT_YET_RELEASED,
    Enum$MediaStatus.CANCELLED,
  ];

  @override
  Widget build(BuildContext context) {
    return CustomChips(
      title: "Airing Status",
      chipList: animeStatuses.map((s) {
        final status = FormattingUtils.getAnimeStatus(s);
        return CustomChoiceChip(label: status, value: status);
      }).toList(),
    );
  }
}
