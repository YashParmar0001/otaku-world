import 'package:flutter/material.dart';

import '../../../../theme/colors.dart';
import '../custom_chips.dart';
import '../custom_choice_chip.dart';

class AnimeTagsChips extends StatelessWidget {
  const AnimeTagsChips({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Tags",
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                color: AppColors.white,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
              ),
        ),
        const SizedBox(
          height: 20,
        ),
        CustomChips(
          title: "Cast / Main Cast",
          titleStyle: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: AppColors.white,
                fontFamily: 'Poppins',
              ),
          chipList: [
            CustomChoiceChip(
              label: "Crunchyroll",
              value: "Crunchyroll",
              onSelected: (p0) {

              },
              onUnselected: (p0) {

              },
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        CustomChips(
          title: "Cast / Main Cast",
          titleStyle: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: AppColors.white,
                fontFamily: 'Poppins',
              ),
          chipList: [
            CustomChoiceChip(
              label: "Crunchyroll",
              value: "Crunchyroll",
              onSelected: (p0) {

              },
              onUnselected: (p0) {

              },
            ),
          ],
        ),
      ],
    );
  }
}
