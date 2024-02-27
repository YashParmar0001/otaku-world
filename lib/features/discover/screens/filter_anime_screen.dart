import 'package:flutter/material.dart';
import 'package:otaku_world/constants/filter_constants.dart';
import 'package:otaku_world/core/ui/appbars/simple_app_bar.dart';
import 'package:otaku_world/core/ui/buttons/primary_button.dart';
import 'package:otaku_world/core/ui/filters/custom_dropdown.dart';
import 'package:otaku_world/core/ui/filters/custom_range_slider.dart';
import 'package:otaku_world/core/ui/filters/widgets/anime_airing_status_chips.dart';
import 'package:otaku_world/core/ui/filters/widgets/anime_check_box_options.dart';
import 'package:otaku_world/core/ui/filters/widgets/anime_format_chips.dart';
import 'package:otaku_world/core/ui/filters/widgets/anime_tags_chips.dart';
import 'package:otaku_world/core/ui/filters/widgets/country_of_origin_chips.dart';
import 'package:otaku_world/core/ui/filters/widgets/genres_chips.dart';
import 'package:otaku_world/core/ui/filters/widgets/season_chips.dart';
import 'package:otaku_world/core/ui/filters/widgets/source_material_chips.dart';
import 'package:otaku_world/core/ui/filters/widgets/streaming_on_chips.dart';
import 'package:otaku_world/theme/colors.dart';

class AnimeFiltersDiscover extends StatelessWidget {
  const AnimeFiltersDiscover({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(title: "Filters"),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomDropdown(
                    title: "Sort",
                    dropdownItems: FilterConstants.mediaSortOptions,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const GenresChips(),
                  const SizedBox(
                    height: 15,
                  ),
                  const SeasonChips(),
                  const SizedBox(
                    height: 15,
                  ),
                  const AnimeFormatChips(),
                  const SizedBox(
                    height: 15,
                  ),
                  const AnimeAiringStatusChips(),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomRangeSlider(
                    title: "Year",
                    minRange: FilterConstants.animeYearMinimum,
                    maxRange: FilterConstants.animeYearMaximum,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomRangeSlider(
                    title: "Episodes",
                    minRange: FilterConstants.minEpisode,
                    maxRange: FilterConstants.maxEpisode,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomRangeSlider(
                    title: "Duration",
                    minRange: FilterConstants.minDuration,
                    maxRange: FilterConstants.maxDuration,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const AnimeCheckBoxOptions(),
                  const SizedBox(
                    height: 15,
                  ),
                  const SourceMaterialChips(),
                  const SizedBox(
                    height: 15,
                  ),
                  const CountryOfOriginChips(),
                  const SizedBox(
                    height: 15,
                  ),
                  const StreamingOnChips(),
                  const SizedBox(
                    height: 15,
                  ),
                  const AnimeTagsChips(),
                  const SizedBox(
                    height: 140,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: const Alignment(0, -1),
                  end: const Alignment(0, 1),
                  colors: [
                    AppColors.raisinBlack.withOpacity(0.4),
                    AppColors.raisinBlack,
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  PrimaryButton(
                    onTap: () {},
                    label: "Remove All",
                    color: AppColors.silver,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  PrimaryButton(
                    onTap: () {},
                    label: "Apply Filters",
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
