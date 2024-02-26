import 'dart:developer' as dev;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:media_kit_video/media_kit_video_controls/src/controls/methods/video_state.dart';
import 'package:otaku_world/bloc/auth/auth_cubit.dart';
import 'package:otaku_world/bloc/routes/redirect_route_cubit.dart';
import 'package:otaku_world/core/routes/slide_transition_route.dart';
import 'package:otaku_world/features/anime_lists/slider_lists/all_time_popular_anime_slider.dart';
import 'package:otaku_world/features/anime_lists/slider_lists/all_time_popular_manga_slider.dart';
import 'package:otaku_world/features/anime_lists/slider_lists/popular_manhwa_manga_slider.dart';
import 'package:otaku_world/features/anime_lists/slider_lists/recommended_anime_slider.dart';
import 'package:otaku_world/features/anime_lists/slider_lists/top_airing_anime_slider.dart';
import 'package:otaku_world/features/anime_lists/slider_lists/top_upcoming_anime_slider.dart';
import 'package:otaku_world/features/anime_lists/slider_lists/trending_anime_slider.dart';
import 'package:otaku_world/features/anime_lists/view_more_lists/all_time_popular_anime_screen.dart';
import 'package:otaku_world/features/anime_lists/view_more_lists/all_time_popular_manga_screen.dart';
import 'package:otaku_world/features/anime_lists/view_more_lists/popular_manhwa_manga_screen.dart';
import 'package:otaku_world/features/anime_lists/view_more_lists/recommended_anime_screen.dart';
import 'package:otaku_world/features/anime_lists/view_more_lists/top_airing_anime_screen.dart';
import 'package:otaku_world/features/anime_lists/view_more_lists/top_upcoming_anime_screen.dart';
import 'package:otaku_world/features/anime_lists/view_more_lists/view_all_top_anime.dart';
import 'package:otaku_world/features/anime_lists/view_more_lists/view_all_top_manga.dart';
import 'package:otaku_world/features/auth/screens/login_screen.dart';
import 'package:otaku_world/features/calendar/screens/calendar_screen.dart';
import 'package:otaku_world/features/discover/screens/anime_discover_screen.dart';
import 'package:otaku_world/features/discover/screens/anime_filters_discover.dart';
import 'package:otaku_world/features/discover/screens/characters_discover_screen.dart';
import 'package:otaku_world/features/discover/screens/manga_discover_screen.dart';
import 'package:otaku_world/features/discover/screens/manga_filters_discover.dart';
import 'package:otaku_world/features/discover/screens/staff_discover_screen.dart';
import 'package:otaku_world/features/discover/screens/studios_discover_screen.dart';
import 'package:otaku_world/features/home/screens/home_screen.dart';
import 'package:otaku_world/features/media_detail/screens/media_detail_screen.dart';
import 'package:otaku_world/features/reviews/screens/review_detail_screen.dart';
import 'package:otaku_world/features/reviews/screens/review_screen.dart';
import 'package:otaku_world/features/search/screens/search_screen.dart';
import 'package:otaku_world/features/splash/screens/splash_screen.dart';
import 'package:otaku_world/observers/go_route_observer.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../core/ui/app_scaffold.dart';
import '../features/anime_lists/slider_lists/recommended_manga_slider.dart';
import '../features/anime_lists/slider_lists/trending_manga_slider.dart';
import '../features/anime_lists/view_more_lists/recommended_manga_screen.dart';
import '../features/anime_lists/view_more_lists/trending_anime_screen.dart';
import '../features/anime_lists/view_more_lists/trending_manga_screen.dart';
import '../features/discover/screens/discover_screen.dart';
import '../features/my_list/screens/my_list_screen.dart';
import '../features/onboarding/screens/onboarding_screen.dart';
import '../features/social/screens/social_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorHomeKey = GlobalKey<NavigatorState>();
final _shellNavigatorDiscoverKey = GlobalKey<NavigatorState>();
final _shellNavigatorSocialKey = GlobalKey<NavigatorState>();
final _shellNavigatorMyListKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  initialLocation: '/',
  navigatorKey: _rootNavigatorKey,
  observers: [CustomRouteObserver()],
  routes: [
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return AppScaffold(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _shellNavigatorHomeKey,
          routes: [
            GoRoute(
              path: '/home',
              pageBuilder: (context, state) {
                return const NoTransitionPage(
                  child: HomeScreen(),
                );
              },
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorDiscoverKey,
          routes: [
            GoRoute(
              path: '/discover',
              pageBuilder: (context, state) {
                return const NoTransitionPage(
                  child: DiscoverScreen(),
                );
              },
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorSocialKey,
          routes: [
            GoRoute(
              path: '/social',
              pageBuilder: (context, state) {
                return const NoTransitionPage(
                  child: SocialScreen(),
                );
              },
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorMyListKey,
          routes: [
            GoRoute(
              path: '/my-list',
              pageBuilder: (context, state) {
                return const NoTransitionPage(
                  child: MyListScreen(),
                );
              },
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/recommended_anime_slider',
      builder: (context, state) => const RecommendedAnimeSlider(),
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/all-time-popular-anime-slider',
      builder: (context, state) => const AllTimePopularAnimeSlider(),
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/all-time-popular-manga-slider',
      builder: (context, state) => const AllTimePopularMangaSlider(),
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/popular-manhwa-manga-slider',
      builder: (context, state) => const PopularManhwaMangaSlider(),
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/top-airing-anime-slider',
      builder: (context, state) => const TopAiringAnimeSlider(),
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/top-upcoming-anime-slider',
      builder: (context, state) => const TopUpcomingAnimeSlider(),
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/all-time-popular-anime-screen',
      builder: (context, state) => const AllTimePopularAnimeScreen(),
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/all-time-popular-manga-screen',
      builder: (context, state) => const AllTimePopularMangaScreen(),
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/popular-manhwa-manga-screen',
      builder: (context, state) => const PopularManhwaMangaScreen(),
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/top-airing-anime-screen',
      builder: (context, state) => const TopAiringAnimeScreen(),
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/top-upcoming-anime-screen',
      builder: (context, state) => const TopUpcomingAnimeScreen(),
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/view-all-top-anime',
      builder: (context, state) => const ViewAllTopAnime(),
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/view-all-top-manga',
      builder: (context, state) => const ViewAllTopManga(),
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/trending_anime_slider',
      builder: (context, state) => const TrendingAnimeSlider(),
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/recommended_manga_slider',
      builder: (context, state) => const RecommendedMangaSlider(),
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/trending_manga_slider',
      builder: (context, state) => const TrendingMangaSlider(),
    ),
    SlideTransitionRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/reviews',
      builder: (state) => const ReviewScreen(),
      directionTween: SlideTransitionRoute.leftToRightTween,
    ),
    SlideTransitionRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/calendar',
      builder: (state) => const CalendarScreen(),
      directionTween: SlideTransitionRoute.leftToRightTween,
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/discover-anime',
      builder: (context, state) => const AnimeDiscoverScreen(),
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/discover-manga',
      builder: (context, state) => const MangaDiscoverScreen(),
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
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/anime-filters-discover',
      builder: (context, state) => const AnimeFiltersDiscover(),
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/manga-filters-discover',
      builder: (context, state) => const MangaFiltersDiscover(),
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/login',
      builder: (context, state) => const LoginScreen(),
      redirect: (context, state) async {
        final sharedPref = await SharedPreferences.getInstance();
        final isFirstTime = sharedPref.getBool('is_first_time');

        if (isFirstTime == null) {
          return '/on-boarding';
        } else {
          null;
        }
        return null;
      },
    ),
    SlideTransitionRoute(
      path: '/reviews',
      parentNavigatorKey: _rootNavigatorKey,
      builder: (state) => const ReviewScreen(),
      directionTween: SlideTransitionRoute.leftToRightTween,
    ),
    SlideTransitionRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/trending_anime',
      builder: (state) => const TrendingAnimeScreen(),
      directionTween: SlideTransitionRoute.leftToRightTween,
    ),
    SlideTransitionRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/recommended_anime',
      builder: (state) => const RecommendedAnimeScreen(),
      directionTween: SlideTransitionRoute.leftToRightTween,
    ),
    SlideTransitionRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/trending_manga',
      builder: (state) => const TrendingMangaScreen(),
      directionTween: SlideTransitionRoute.leftToRightTween,
    ),
    SlideTransitionRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/recommended_manga',
      builder: (state) => const RecommendedMangaScreen(),
      directionTween: SlideTransitionRoute.leftToRightTween,
    ),
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
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/media-detail',
      builder: (context, state) {
        return MediaDetailScreen(
          mediaId: int.parse(
            state.queryParameters['id']!,
          ),
        );
      },
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/search',
      builder: (context, state) => const SearchScreen(),
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/on-boarding',
      builder: (context, state) => OnBoardingScreen(),
    ),
    SlideTransitionRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/login',
      builder: (_) => const LoginScreen(),
      directionTween: SlideTransitionRoute.leftToRightTween,
      redirect: (context, state) async {
        final sharedPrefs = await SharedPreferences.getInstance();
        final firstTime = sharedPrefs.getBool('is_first_time');
        if (firstTime == null) {
          return '/on-boarding';
        } else {
          return null;
        }
      },
    ),
  ],
  onException: (context, state, router) {
    router.go('/home');
  },
  redirect: (context, state) {
    dev.log('Matched location: ${state.matchedLocation}',
        name: 'RouterRedirect');
    if (state.matchedLocation == '/') return null;
    if (state.matchedLocation == '/on-boarding') return null;

    final authState = context.read<AuthCubit>().state;
    final routeCubit = context.read<RedirectRouteCubit>();

    if (authState is UnAuthenticated) {
      if ((!routeCubit.isDesiredRouteSet() &&
              state.matchedLocation != '/login') ||
          (state.matchedLocation != '/home' &&
              state.matchedLocation != '/login' &&
              state.matchedLocation != '/on-boarding')) {
        routeCubit.setDesiredRoute(
          state.matchedLocation,
          state.queryParameters,
        );
      }
      return '/login';
    } else {
      if (state.matchedLocation == '/home' && routeCubit.isDesiredRouteSet()) {
        final route = routeCubit.getDesiredRoute();
        routeCubit.resetDesiredRoute();
        dev.log('Going to desired route: $route', name: 'RouterRedirect');
        return route;
      } else {
        return null;
      }
    }
  },
);
