import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otaku_world/core/ui/custom_search_bar.dart';

import '../../../generated/assets.dart';
import '../../../theme/colors.dart';

class SearchOption extends StatelessWidget {
  const SearchOption({
    super.key,
    required this.onPressedFilters,
    required this.clearSearch,
    required this.onSubmitted,
  });

  final VoidCallback onPressedFilters;
  final VoidCallback clearSearch;
  final ValueChanged<String> onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomSearchBar(
          clearSearch: clearSearch,
          onSubmitted: onSubmitted,
        ),
        const SizedBox(
          width: 10,
        ),
        InkWell(
          onTap: onPressedFilters,
          child: Container(
            height: 50,
            width: 50,
            decoration: ShapeDecoration(
              color: AppColors.jet,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              shadows: [
                BoxShadow(
                  color: AppColors.black.withOpacity(0.25),
                  blurRadius: 4,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Center(
              child: SvgPicture.asset(
                Assets.iconsDiscoverFilter,
                width: 24,
                height: 24,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
