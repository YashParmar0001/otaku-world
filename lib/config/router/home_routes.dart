part of 'router.dart';

final homeRoutes = [
  // Reviews screen
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.reviews,
    builder: (state) => const ReviewScreen(),
    directionTween: SlideTransitionRoute.leftToRightTween,
  ),
  // Review detail
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.reviewDetail,
    builder: (state) {
      return ReviewDetailScreen(
        reviewId: int.parse(
          state.queryParameters['id']!,
        ),
      );
    },
    directionTween: SlideTransitionRoute.leftToRightTween,
  ),
  // Calendar screen
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.calendar,
    builder: (state) => const CalendarScreen(),
    directionTween: SlideTransitionRoute.leftToRightTween,
  ),
  // Search Screen
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,

path: RouteConstants.search,
    builder: (context, state) => BlocProvider(
      create: (context) => SearchBloc(),
      child: const SearchScreen(),
    ),

  ),
  // Trending Anime
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.trendingAnime,
    builder: (state) => const TrendingAnimeScreen(),
    directionTween: SlideTransitionRoute.leftToRightTween,
  ),
  // Trending Anime Slider
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.trendingAnimeSlider,
    builder: (state) => const TrendingAnimeSlider(),
    directionTween: SlideTransitionRoute.leftToRightTween,
  ),
  // Recommended Anime
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.recommendedAnime,
    builder: (state) => const RecommendedAnimeScreen(),
    directionTween: SlideTransitionRoute.leftToRightTween,
  ),
  // Recommended Anime Slider
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.recommendedAnimeSlider,
    builder: (state) => const RecommendedAnimeSlider(),
    directionTween: SlideTransitionRoute.leftToRightTween,
  ),
  // Trending Manga
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.trendingManga,
    builder: (state) => const TrendingMangaScreen(),
    directionTween: SlideTransitionRoute.leftToRightTween,
  ),
  // Trending Manga Slider
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.trendingMangaSlider,
    builder: (state) => const TrendingMangaSlider(),
    directionTween: SlideTransitionRoute.leftToRightTween,
  ),
  // Recommended Manga
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.recommendedManga,
    builder: (state) => const RecommendedMangaScreen(),
    directionTween: SlideTransitionRoute.leftToRightTween,
  ),
  // Recommended Manga Slider
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.recommendedMangaSlider,
    builder: (state) => const RecommendedMangaSlider(),
    directionTween: SlideTransitionRoute.leftToRightTween,
  ),
];
