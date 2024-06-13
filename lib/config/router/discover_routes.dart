part of 'router.dart';

final discoverRoutes = [
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: '/discover-anime',
    builder: (context, state) => const AnimeDiscoverScreen(),
  ),
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: '/anime-filters',
    builder: (context, state) => const AnimeFilters(),
  ),
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: '/filter-anime-slider',
    builder: (context, state) => const AnimeSliderScreen(),
  ),
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: '/top-airing-anime',
    builder: (context, state) => const TopAiringAnimeScreen(),
  ),
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: '/top-airing-anime-slider',
    builder: (context, state) => const TopAiringAnimeSlider(),
  ),
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: '/top-upcoming-anime',
    builder: (context, state) => const TopUpcomingAnimeScreen(),
  ),
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: '/top-upcoming-anime-slider',
    builder: (context, state) => const TopUpcomingAnimeSlider(),
  ),
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: '/all-time-popular-anime',
    builder: (context, state) => const AllTimePopularAnimeScreen(),
  ),
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: '/all-time-popular-anime-slider',
    builder: (context, state) => const AllTimePopularAnimeSlider(),
  ),
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: '/top-anime',
    builder: (context, state) => const TopAnime(),
  ),
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: '/discover-manga',
    builder: (context, state) => const MangaDiscoverScreen(),
  ),
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: '/manga-filters',
    builder: (context, state) => const MangaFilters(),
  ),
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: '/all-time-popular-manga',
    builder: (context, state) => const AllTimePopularMangaScreen(),
  ),
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: '/all-time-popular-manga-slider',
    builder: (context, state) => const AllTimePopularMangaSlider(),
  ),
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: '/popular-manhwa',
    builder: (context, state) => const PopularManhwaScreen(),
  ),
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: '/popular-manhwa-slider',
    builder: (context, state) => const PopularManhwaSlider(),
  ),
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: '/top-manga',
    builder: (context, state) => const TopManga(),
  ),
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: '/discover-characters',
    builder: (context, state) => const CharactersDiscoverScreen(),
  ),
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: '/discover-staff',
    builder: (context, state) => const StaffDiscoverScreen(),
  ),
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: '/discover-studios',
    builder: (context, state) => const StudiosDiscoverScreen(),
  ),
];
