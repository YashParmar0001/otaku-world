part of 'router.dart';

final discoverRoutes = [
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.discoverAnime,
    builder: (context, state) => const AnimeDiscoverScreen(),
  ),
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.animeFilters,
    builder: (context, state) => const AnimeFilters(),
  ),
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.filterAnimeSlider,
    builder: (context, state) => const AnimeSliderScreen(),
  ),
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.topAiringAnime,
    builder: (context, state) => const TopAiringAnimeScreen(),
  ),
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.topAiringAnimeSlider,
    builder: (context, state) => const TopAiringAnimeSlider(),
  ),
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.topUpcomingAnime,
    builder: (context, state) => const TopUpcomingAnimeScreen(),
  ),
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.topUpcomingAnimeSlider,
    builder: (context, state) => const TopUpcomingAnimeSlider(),
  ),
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.allTimePopularAnime,
    builder: (context, state) => const AllTimePopularAnimeScreen(),
  ),
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.allTimePopularAnimeSlider,
    builder: (context, state) => const AllTimePopularAnimeSlider(),
  ),
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.topAnime,
    builder: (context, state) => const TopAnime(),
  ),
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.discoverManga,
    builder: (context, state) => const MangaDiscoverScreen(),
  ),
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.mangaFilters,
    builder: (context, state) => const MangaFilters(),
  ),
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.allTimePopularManga,
    builder: (context, state) => const AllTimePopularMangaScreen(),
  ),
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.allTimePopularMangaSlider,
    builder: (context, state) => const AllTimePopularMangaSlider(),
  ),
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.popularManhwa,
    builder: (context, state) => const PopularManhwaScreen(),
  ),
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.popularManhwaSlider,
    builder: (context, state) => const PopularManhwaSlider(),
  ),
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.topManga,
    builder: (context, state) => const TopManga(),
  ),
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.discoverCharacters,
    builder: (context, state) => const CharactersDiscoverScreen(),
  ),
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.discoverStaff,
    builder: (context, state) => const StaffDiscoverScreen(),
  ),
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.discoverStudios,
    builder: (context, state) => const StudiosDiscoverScreen(),
  ),
];
