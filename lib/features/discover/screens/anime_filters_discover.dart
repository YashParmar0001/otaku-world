import 'package:flutter/material.dart';
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
          const SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomDropdown(
                    title: "Sort",
                    dropdownItems: [
                      DropdownMenuItem(
                        value: "all",
                        child: Text(
                          "All",
                        ),
                      ),
                      DropdownMenuItem(
                        value: "title",
                        child: Text(
                          "Title",
                        ),
                      ),
                      DropdownMenuItem(
                        value: "popularity",
                        child: Text(
                          "Popularity",
                        ),
                      ),
                      DropdownMenuItem(
                        value: "averageScore",
                        child: Text(
                          "Average Score",
                        ),
                      ),
                      DropdownMenuItem(
                        value: "trending",
                        child: Text(
                          "Trending",
                        ),
                      ),
                      DropdownMenuItem(
                        value: "favorites",
                        child: Text(
                          "Favorites",
                        ),
                      ),
                      DropdownMenuItem(
                        value: "dateAdded",
                        child: Text(
                          "Date Added",
                        ),
                      ),
                      DropdownMenuItem(
                        value: "releaseDate",
                        child: Text(
                          "Release Date",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GenresChips(),
                  SizedBox(
                    height: 15,
                  ),
                  SeasonChips(),
                  SizedBox(
                    height: 15,
                  ),
                  AnimeFormatChips(),
                  SizedBox(
                    height: 15,
                  ),
                  AnimeAiringStatusChips(),
                  SizedBox(
                    height: 15,
                  ),
                  CustomRangeSlider(
                    title: "Year",
                    minRange: 2000,
                    maxRange: 2024,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomRangeSlider(
                    title: "Episodes",
                    minRange: 1,
                    maxRange: 150,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomRangeSlider(
                    title: "Duration",
                    minRange: 1,
                    maxRange: 150,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  AnimeCheckBoxOptions(),
                  SizedBox(
                    height: 15,
                  ),
                  SourceMaterialChips(),
                  SizedBox(
                    height: 15,
                  ),
                  CountryOfOriginChips(),
                  SizedBox(
                    height: 15,
                  ),
                  StreamingOnChips(),
                  SizedBox(
                    height: 15,
                  ),
                  AnimeTagsChips(),
                  SizedBox(
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
