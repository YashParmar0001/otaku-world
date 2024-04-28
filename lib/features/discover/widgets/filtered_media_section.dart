import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';

import '../../../generated/assets.dart';
import 'media_grid.dart';

class FilteredMediaSection extends StatelessWidget {
  const FilteredMediaSection({super.key, required this.list, required this.hasNextPage,});

  final List<Fragment$MediaShort?> list;
  final bool hasNextPage;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Results',
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontFamily: 'Roboto-Condensed',
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Padding(
                  padding: const EdgeInsets.only(
                    left: 12,
                    right: 12,
                    // bottom: 10,
                  ),
                  child: SvgPicture.asset(Assets.iconsViewSlider),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
        MediaGrid(
          list: list,
          hasNextPage: hasNextPage,
        ),
      ],
    );
  }
}
