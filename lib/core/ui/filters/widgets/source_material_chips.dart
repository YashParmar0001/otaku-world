import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/bloc/filter/filter_anime/filter_anime_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/utils/formatting_utils.dart';

import '../custom_chips.dart';
import '../custom_choice_chip.dart';

class SourceMaterialChips extends StatelessWidget {
  const SourceMaterialChips({super.key, required this.selectedSources});

  final List<String> selectedSources;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<FilterAnimeBloc>();
    return CustomChips(
      title: 'Source Material',
      chipList: Enum$MediaSource.values.map((s) {
        if (s == Enum$MediaSource.$unknown) return const SizedBox();
        final source = FormattingUtils.getMediaSourceString(s);
        return CustomChoiceChip(
          label: source,
          value: source,
          selected: selectedSources.contains(source),
          onSelected: (source) {
            bloc.add(SelectSource(source));
          },
          onUnselected: (source) {
            bloc.add(UnselectSource(source));
          },
        );
      }).toList(),
    );
  }
}
