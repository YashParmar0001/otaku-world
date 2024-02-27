import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';

class AnimeFilter {
  final String search;
  final List<Enum$MediaSort> sort;
  final List<String> genres;
  final int startDateGreater;
  final int startDateLesser;
  final bool isLicensed;
  final Enum$MediaSeason season;
  final int seasonYear;
  final List<Enum$MediaFormat> formatIn;
  final List<Enum$MediaStatus> statusIn;
  final List<String> licensedByIn;
  final String countryOfOrigin;
  final List<Enum$MediaSource> sourceIn;
  final int episodesGreater;
  final int episodesLesser;
  final int durationGreater;
  final int durationLesser;
  final int minTagRank;
  final List<String> tagCategoryIn;
  final List<String> tagIn;

  const AnimeFilter({
    required this.search,
    required this.sort,
    required this.genres,
    required this.startDateGreater,
    required this.startDateLesser,
    required this.isLicensed,
    required this.season,
    required this.seasonYear,
    required this.formatIn,
    required this.statusIn,
    required this.licensedByIn,
    required this.countryOfOrigin,
    required this.sourceIn,
    required this.episodesGreater,
    required this.episodesLesser,
    required this.durationGreater,
    required this.durationLesser,
    required this.minTagRank,
    required this.tagCategoryIn,
    required this.tagIn,
  });

  @override
  String toString() {
    return 'AnimeFilter{ search: $search, sort: $sort, genres: $genres, startDateGreater: $startDateGreater, startDateLesser: $startDateLesser, isLicensed: $isLicensed, season: $season, seasonYear: $seasonYear, formatIn: $formatIn, statusIn: $statusIn, licensedByIn: $licensedByIn, countryOfOrigin: $countryOfOrigin, sourceIn: $sourceIn, episodesGreater: $episodesGreater, episodesLesser: $episodesLesser, durationGreater: $durationGreater, durationLesser: $durationLesser, minTagRank: $minTagRank, tagCategoryIn: $tagCategoryIn, tagIn: $tagIn,}';
  }

  AnimeFilter copyWith({
    String? search,
    List<Enum$MediaSort>? sort,
    List<String>? genres,
    int? startDateGreater,
    int? startDateLesser,
    bool? isLicensed,
    Enum$MediaSeason? season,
    int? seasonYear,
    List<Enum$MediaFormat>? formatIn,
    List<Enum$MediaStatus>? statusIn,
    List<String>? licensedByIn,
    String? countryOfOrigin,
    List<Enum$MediaSource>? sourceIn,
    int? episodesGreater,
    int? episodesLesser,
    int? durationGreater,
    int? durationLesser,
    int? minTagRank,
    List<String>? tagCategoryIn,
    List<String>? tagIn,
  }) {
    return AnimeFilter(
      search: search ?? this.search,
      sort: sort ?? this.sort,
      genres: genres ?? this.genres,
      startDateGreater: startDateGreater ?? this.startDateGreater,
      startDateLesser: startDateLesser ?? this.startDateLesser,
      isLicensed: isLicensed ?? this.isLicensed,
      season: season ?? this.season,
      seasonYear: seasonYear ?? this.seasonYear,
      formatIn: formatIn ?? this.formatIn,
      statusIn: statusIn ?? this.statusIn,
      licensedByIn: licensedByIn ?? this.licensedByIn,
      countryOfOrigin: countryOfOrigin ?? this.countryOfOrigin,
      sourceIn: sourceIn ?? this.sourceIn,
      episodesGreater: episodesGreater ?? this.episodesGreater,
      episodesLesser: episodesLesser ?? this.episodesLesser,
      durationGreater: durationGreater ?? this.durationGreater,
      durationLesser: durationLesser ?? this.durationLesser,
      minTagRank: minTagRank ?? this.minTagRank,
      tagCategoryIn: tagCategoryIn ?? this.tagCategoryIn,
      tagIn: tagIn ?? this.tagIn,
    );
  }
}
