import 'dart:developer' as dev;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/auth/auth_cubit.dart';
import 'package:otaku_world/bloc/routes/redirect_route_cubit.dart';
import 'package:otaku_world/core/routes/slide_transition_route.dart';
import 'package:otaku_world/features/anime_lists/slider_lists/all_time_popular_anime_slider.dart';
import 'package:otaku_world/features/anime_lists/slider_lists/all_time_popular_manga_slider.dart';
import 'package:otaku_world/features/anime_lists/slider_lists/popular_manhwa_slider.dart';
import 'package:otaku_world/features/anime_lists/slider_lists/recommended_anime_slider.dart';
import 'package:otaku_world/features/anime_lists/slider_lists/top_airing_anime_slider.dart';
import 'package:otaku_world/features/anime_lists/slider_lists/top_upcoming_anime_slider.dart';
import 'package:otaku_world/features/anime_lists/slider_lists/trending_anime_slider.dart';
import 'package:otaku_world/features/anime_lists/view_more_lists/all_time_popular_anime_screen.dart';
import 'package:otaku_world/features/anime_lists/view_more_lists/all_time_popular_manga_screen.dart';
import 'package:otaku_world/features/anime_lists/view_more_lists/recommended_anime_screen.dart';
import 'package:otaku_world/features/anime_lists/view_more_lists/top_airing_anime_screen.dart';
import 'package:otaku_world/features/anime_lists/view_more_lists/top_upcoming_anime_screen.dart';
import 'package:otaku_world/features/anime_lists/view_more_lists/top_anime.dart';
import 'package:otaku_world/features/anime_lists/view_more_lists/top_manga.dart';
import 'package:otaku_world/features/auth/screens/login_screen.dart';
import 'package:otaku_world/features/calendar/screens/calendar_screen.dart';
import 'package:otaku_world/features/discover/discover_anime/screens/anime_discover_screen.dart';
import 'package:otaku_world/features/discover/discover_anime/screens/anime_slider_screen.dart';
import 'package:otaku_world/features/discover/discover_anime/screens/filter_anime_screen.dart';
import 'package:otaku_world/features/discover/screens/characters_discover_screen.dart';
import 'package:otaku_world/features/discover/discover_manga/screens/manga_discover_screen.dart';
import 'package:otaku_world/features/discover/discover_manga/screens/filter_manga_screen.dart';
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
import '../../core/ui/app_scaffold.dart';
import '../../features/anime_lists/slider_lists/recommended_manga_slider.dart';
import '../../features/anime_lists/slider_lists/trending_manga_slider.dart';
import '../../features/anime_lists/view_more_lists/popular_manhwa_screen.dart';
import '../../features/anime_lists/view_more_lists/recommended_manga_screen.dart';
import '../../features/anime_lists/view_more_lists/trending_anime_screen.dart';
import '../../features/anime_lists/view_more_lists/trending_manga_screen.dart';
import '../../features/discover/screens/discover_screen.dart';
import '../../features/my_list/screens/my_list_screen.dart';
import '../../features/onboarding/screens/onboarding_screen.dart';
import '../../features/social/screens/social_screen.dart';

part 'bottom_nav_routes.dart';

part 'home_routes.dart';

part 'discover_routes.dart';

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
    // Splash Screen
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    // Bottom navigation pages
    bottomNavRoutes,
    ...homeRoutes,
    ...discoverRoutes,
    SlideTransitionRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/media-detail',
      builder: (state) {
        return MediaDetailScreen(
          mediaId: int.parse(
            state.queryParameters['id']!,
          ),
        );
      },
      directionTween: SlideTransitionRoute.leftToRightTween,
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
