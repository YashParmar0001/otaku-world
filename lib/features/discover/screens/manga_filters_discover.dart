import 'package:flutter/material.dart';
import 'package:otaku_world/core/ui/appbars/simple_app_bar.dart';
import 'package:otaku_world/core/ui/filters/widgets/manga_format_chips.dart';
import 'package:otaku_world/core/ui/filters/widgets/manga_publishing_status_chips.dart';
import 'package:otaku_world/core/ui/filters/widgets/manga_tags_chips.dart';
import 'package:otaku_world/core/ui/filters/widgets/readable_on_chips.dart';

import '../../../core/ui/buttons/primary_button.dart';
import '../../../core/ui/filters/custom_dropdown.dart';
import '../../../core/ui/filters/custom_range_slider.dart';
import '../../../core/ui/filters/widgets/genres_chips.dart';
import '../../../core/ui/filters/widgets/manga_check_box_options.dart';
import '../../../core/ui/filters/widgets/source_material_chips.dart';
import '../../../theme/colors.dart';

class MangaFiltersDiscover extends StatelessWidget {
  const MangaFiltersDiscover({super.key});

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
                  // CustomDropdown(
                  //   title: "Sort",
                  //   dropdownItems: [
                  //     'All',
                  //     'Title',
                  //     'Popularity',
                  //     'Average Score',
                  //     'Trending',
                  //     'Favourites',
                  //     'Date Added',
                  //     'Release Date',
                  //   ]
                  // ),
                  SizedBox(
                    height: 15,
                  ),
                  // GenresChips(),
                  SizedBox(
                    height: 15,
                  ),
                  MangaFormatChips(),
                  SizedBox(
                    height: 15,
                  ),
                  MangaPublishingStatusChips(),
                  SizedBox(
                    height: 15,
                  ),
                  // CustomRangeSlider(
                  //   title: "Year",
                  //   minRange: 2000,
                  //   maxRange: 2024,
                  // ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  // CustomRangeSlider(
                  //   title: "Chapters",
                  //   minRange: 1,
                  //   maxRange: 150,
                  // ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  // CustomRangeSlider(
                  //   title: "Volumes",
                  //   minRange: 1,
                  //   maxRange: 150,
                  // ),
                  SizedBox(
                    height: 10,
                  ),
                  MangaCheckBoxOptions(),
                  SizedBox(
                    height: 15,
                  ),
                  // SourceMaterialChips(),
                  SizedBox(
                    height: 15,
                  ),
                  // CountryOfOriginChips(),
                  SizedBox(
                    height: 15,
                  ),
                  ReadableOnChips(),
                  SizedBox(
                    height: 15,
                  ),
                  MangaTagsChips(),
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
