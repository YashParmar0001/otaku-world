import 'package:flutter/material.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/utils/formatting_utils.dart';

import '../custom_chips.dart';
import '../custom_choice_chip.dart';

class AnimeFormatChips extends StatelessWidget {
  const AnimeFormatChips({super.key});

  final animeFormats = const [
    Enum$MediaFormat.TV,
    Enum$MediaFormat.TV_SHORT,
    Enum$MediaFormat.MOVIE,
    Enum$MediaFormat.SPECIAL,
    Enum$MediaFormat.OVA,
    Enum$MediaFormat.ONA,
    Enum$MediaFormat.MUSIC,
  ];

  @override
  Widget build(BuildContext context) {
    return CustomChips(
      title: 'Format',
      chipList: animeFormats.map((f) {
        final format = FormattingUtils.getAnimeFormat(f);
        return CustomChoiceChip(label: format, value: format);
      }).toList(),
    );
  }
}
