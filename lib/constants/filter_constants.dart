import 'dart:core';

class FilterConstants {
  static const List<String> mediaSortOptions = [
    'All',
    'Title',
    'Popularity',
    'Average Score',
    'Trending',
    'Favourites',
    'Date Added',
    'Release Date',
  ];

  static const double animeYearMinimum = 1970;
  static double animeYearMaximum = DateTime.now().year + 1;

  static const double minEpisode = 1;
  static const double maxEpisode = 150;

  static const double minDuration = 1;
  static const double maxDuration = 170;
}