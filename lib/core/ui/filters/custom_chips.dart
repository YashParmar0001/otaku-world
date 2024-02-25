import 'package:flutter/material.dart';
import 'package:otaku_world/core/ui/filters/custom_choice_chip.dart';
import 'package:otaku_world/theme/colors.dart';

class CustomChips extends StatelessWidget {
  const CustomChips({
    super.key,
    required this.title,
    required this.chipList,
    this.titleStyle,
  });
  final String title;
  final List<CustomChoiceChip> chipList;
  final TextStyle? titleStyle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: (titleStyle == null)
              ? Theme.of(context).textTheme.displayMedium!.copyWith(
                    color: AppColors.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                  )
              : titleStyle,
        ),
        const SizedBox(
          height: 10,
        ),
        Wrap(
          spacing: 5,
          children: chipList,
        ),
      ],
    );
  }
}
