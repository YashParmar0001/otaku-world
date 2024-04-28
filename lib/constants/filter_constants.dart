import 'dart:core';

class FilterConstants {
  static const List<String> mediaSortOptions = [
    'Popularity',
    'Title',
    'Average Score',
    'Trending',
    'Favourites',
    'Date Added',
    'Release Date',
  ];

  static const List<String> seasons = [
    'All',
    'Winter',
    'Spring',
    'Summer',
    'Fall',
  ];

  static const List<String> countries = [
    'All',
    'Japan',
    'South Korea',
    'China',
    'Taiwan',
  ];

  static const double animeYearMinimum = 1970;
  static double animeYearMaximum = DateTime.now().year + 1;

  static const double minEpisode = 1;
  static const double maxEpisode = 150;

  static const double minDuration = 1;
  static const double maxDuration = 170;
}