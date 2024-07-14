part of 'router.dart';

final homeRoutes = [
  // Reviews screen
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: '/reviews',
    builder: (state) => const ReviewScreen(),
    directionTween: SlideTransitionRoute.leftToRightTween,
  ),
  // Review detail
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: '/review-detail',
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
    path: '/calendar',
    builder: (state) => const CalendarScreen(),
    directionTween: SlideTransitionRoute.leftToRightTween,
  ),
  // Search Screen
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: '/search',
    builder: (context, state) => BlocProvider(
      create: (context) => SearchBloc(),
      child: const SearchScreen(),
    ),
  ),
  // Trending Anime
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: '/trending-anime',
    builder: (state) => const TrendingAnimeScreen(),
    directionTween: SlideTransitionRoute.leftToRightTween,
  ),
  // Trending Anime Slider
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: '/trending-anime-slider',
    builder: (state) => const TrendingAnimeSlider(),
    directionTween: SlideTransitionRoute.leftToRightTween,
  ),
  // Recommended Anime
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: '/recommended-anime',
    builder: (state) => const RecommendedAnimeScreen(),
    directionTween: SlideTransitionRoute.leftToRightTween,
  ),
  // Recommended Anime Slider
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: '/recommended-anime-slider',
    builder: (state) => const RecommendedAnimeSlider(),
    directionTween: SlideTransitionRoute.leftToRightTween,
  ),
  // Trending Manga
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: '/trending-manga',
    builder: (state) => const TrendingMangaScreen(),
    directionTween: SlideTransitionRoute.leftToRightTween,
  ),
  // Trending Manga Slider
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: '/trending-manga-slider',
    builder: (state) => const TrendingMangaSlider(),
    directionTween: SlideTransitionRoute.leftToRightTween,
  ),
  // Recommended Manga
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: '/recommended-manga',
    builder: (state) => const RecommendedMangaScreen(),
    directionTween: SlideTransitionRoute.leftToRightTween,
  ),
  // Recommended Manga Slider
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: '/recommended-manga-slider',
    builder: (state) => const RecommendedMangaSlider(),
    directionTween: SlideTransitionRoute.leftToRightTween,
  ),
];
