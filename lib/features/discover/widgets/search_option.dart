import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otaku_world/bloc/filter/filter_anime/filter_anime_bloc.dart';
import 'package:otaku_world/core/ui/custom_search_bar.dart';

import '../../../generated/assets.dart';
import '../../../theme/colors.dart';

class SearchOption extends StatelessWidget {
  const SearchOption({
    super.key,
    required this.onPressedFilters,
    required this.clearSearch,
    required this.onSubmitted,
    required this.onChanged,
  });

  final VoidCallback onPressedFilters;
  final VoidCallback clearSearch;
  final ValueChanged<String> onSubmitted;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<FilterAnimeBloc>();
    return Row(
      children: [
        CustomSearchBar(
          clearSearch: clearSearch,
          onSubmitted: onSubmitted,
          onChanged: onChanged,
        ),
        const SizedBox(
          width: 10,
        ),
        BlocBuilder<FilterAnimeBloc, FilterAnimeState>(
          builder: (context, state) {
            return GestureDetector(
              onTap: onPressedFilters,
              child: Container(
                height: 50,
                width: 50,
                decoration: ShapeDecoration(
                  color: bloc.filterApplied
                      ? AppColors.sunsetOrange
                      : AppColors.jet,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    Assets.iconsDiscoverFilter,
                    width: 24,
                    height: 24,
                    fit: BoxFit.fill,
                    color: bloc.filterApplied ? AppColors.white : null,
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
