import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/filter/filter_anime/filter_anime_bloc.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/constants/filter_constants.dart';
import 'package:otaku_world/core/ui/appbars/simple_app_bar.dart';
import 'package:otaku_world/core/ui/buttons/primary_button.dart';
import 'package:otaku_world/core/ui/filters/custom_dropdown.dart';
import 'package:otaku_world/core/ui/filters/custom_range_slider.dart';
import 'package:otaku_world/core/ui/filters/widgets/anime_airing_status_chips.dart';
import 'package:otaku_world/core/ui/filters/widgets/anime_check_box_options.dart';
import 'package:otaku_world/core/ui/filters/widgets/anime_format_chips.dart';
import 'package:otaku_world/core/ui/filters/widgets/anime_tags_chips.dart';
import 'package:otaku_world/core/ui/filters/widgets/genres_chips.dart';
import 'package:otaku_world/core/ui/filters/widgets/source_material_chips.dart';
import 'package:otaku_world/core/ui/filters/widgets/streaming_on_chips.dart';
import 'package:otaku_world/theme/colors.dart';
import 'package:otaku_world/utils/formatting_utils.dart';

class AnimeFiltersDiscover extends StatelessWidget {
  const AnimeFiltersDiscover({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<FilterAnimeBloc>();
    final client =
        (context.read<GraphqlClientCubit>().state as GraphqlClientInitialized)
            .client;

    return Scaffold(
      appBar: const SimpleAppBar(title: "Filters"),
      body: BlocListener<FilterAnimeBloc, FilterAnimeState>(
        listener: (context, state) {
          if (state is ResultsLoaded || state is FilterAnimeInitial) {
            context.pop();
          }
        },
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomDropdown(
                      title: 'Sort',
                      dropdownItems: FilterConstants.mediaSortOptions,
                      initialValue: FormattingUtils.getMediaSortString(
                        bloc.appliedFilter.sort.first,
                      ),
                      onChange: (option) {
                        bloc.add(SelectAnimeSort(option));
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomDropdown(
                      title: 'Season',
                      dropdownItems: FilterConstants.seasons,
                      initialValue: FormattingUtils.getSeasonString(
                        bloc.appliedFilter.season,
                      ),
                      onChange: (season) {
                        bloc.add(SelectAnimeSeason(season));
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomDropdown(
                      title: 'Year',
                      dropdownItems: [
                        'All',
                        ...List<String>.generate(
                          (FilterConstants.animeYearMaximum.toInt() -
                                  FilterConstants.animeYearMinimum.toInt()) +
                              1,
                          (index) =>
                              (FilterConstants.animeYearMaximum.toInt() - index)
                                  .toString(),
                        ),
                      ],
                      initialValue:
                          (bloc.appliedFilter.seasonYear ?? 'All').toString(),
                      onChange: (year) {
                        bloc.add(SelectAnimeSeasonYear(year));
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    GenresChips(
                      selectedGenres: bloc.appliedFilter.genres ?? const [],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    AnimeFormatChips(
                      selectedFormats: bloc.appliedFilter.formatIn
                              ?.map((f) =>
                                  FormattingUtils.getMediaFormatString(f))
                              .toList() ??
                          const [],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    AnimeAiringStatusChips(
                      selectedStatuses: bloc.appliedFilter.statusIn
                              ?.map((s) =>
                                  FormattingUtils.getMediaStatusString(s))
                              .toList() ??
                          const [],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomRangeSlider(
                      title: 'Year',
                      initialStartValue:
                          bloc.appliedFilter.startDateGreater != null
                              ? int.parse(bloc.appliedFilter.startDateGreater!)
                              : null,
                      initialEndValue:
                          bloc.appliedFilter.startDateLesser != null
                              ? int.parse(bloc.appliedFilter.startDateLesser!)
                              : null,
                      minRange: FilterConstants.animeYearMinimum,
                      maxRange: FilterConstants.animeYearMaximum,
                      onChangeEnd: (values) {
                        bloc.add(SetYearRange(
                          start: values.start,
                          end: values.end,
                        ));
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomRangeSlider(
                      title: 'Episodes',
                      initialStartValue: bloc.appliedFilter.episodesGreater,
                      initialEndValue: bloc.appliedFilter.episodesLesser,
                      minRange: FilterConstants.minEpisode,
                      maxRange: FilterConstants.maxEpisode,
                      onChangeEnd: (values) {
                        bloc.add(SetEpisodesRange(
                          start: values.start,
                          end: values.end,
                        ));
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomRangeSlider(
                      title: 'Duration',
                      initialStartValue: bloc.appliedFilter.durationGreater,
                      initialEndValue: bloc.appliedFilter.durationLesser,
                      minRange: FilterConstants.minDuration,
                      maxRange: FilterConstants.maxDuration,
                      onChangeEnd: (values) {
                        bloc.add(SetDurationRange(
                          start: values.start,
                          end: values.end,
                        ));
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const AnimeCheckBoxOptions(),
                    const SizedBox(
                      height: 15,
                    ),
                    SourceMaterialChips(
                      selectedSources: bloc.appliedFilter.sourceIn
                              ?.map((s) =>
                                  FormattingUtils.getMediaSourceString(s))
                              .toList() ??
                          const [],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomDropdown(
                      title: 'Country of Origin',
                      dropdownItems: FilterConstants.countries,
                      initialValue: FormattingUtils.getCountry(
                        bloc.appliedFilter.countryOfOrigin,
                      ),
                      onChange: (country) {
                        bloc.add(SelectCountry(country));
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    AnimePlatformsChips(
                      selectedPlatforms:
                          bloc.appliedFilter.licensedByIn ?? const [],
                    ),
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
                child: BlocBuilder<FilterAnimeBloc, FilterAnimeState>(
                  builder: (context, state) {
                    if (state is ResultsLoading) {
                      return const CircularProgressIndicator();
                    } else {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          if (bloc.filterApplied)
                            PrimaryButton(
                              onTap: () {
                                bloc.add(RemoveAllFilters());
                              },
                              label: 'Remove All',
                              color: AppColors.silver,
                            ),
                          const SizedBox(
                            height: 15,
                          ),
                          PrimaryButton(
                            onTap: () {
                              bloc.add(ApplyFilter(client));
                            },
                            label: "Apply Filters",
                          ),
                          const SizedBox(height: 15),
                        ],
                      );
                    }
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
