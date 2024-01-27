import 'dart:developer' as dev;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/auth/auth_cubit.dart';
import 'package:otaku_world/bloc/routes/redirect_route_cubit.dart';
import 'package:otaku_world/core/routes/slide_transition_route.dart';
import 'package:otaku_world/features/anime_lists/slider_lists/recommended_anime_slider.dart';
import 'package:otaku_world/features/anime_lists/slider_lists/trending_anime_slider.dart';
import 'package:otaku_world/features/anime_lists/view_more_lists/recommended_anime_screen.dart';
import 'package:otaku_world/features/auth/screens/login_screen.dart';
import 'package:otaku_world/features/calendar/screens/calendar_screen.dart';
import 'package:otaku_world/features/home/screens/home_screen.dart';
import 'package:otaku_world/features/media_detail/screens/media_detail_screen.dart';
import 'package:otaku_world/features/reviews/screens/review_detail_screen.dart';
import 'package:otaku_world/features/reviews/screens/review_screen.dart';
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
import '../graphql/__generated/graphql/fragments.graphql.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

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
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/review-detail',
      builder: (context, state) => ReviewDetailScreen(
        reviewId: int.parse(state.queryParameters['id']!),
      ),
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/reviews',
      builder: (context, state) => const ReviewScreen(),
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/calendar',
      builder: (context, state) => CalendarScreen(),
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/on_boarding',
      builder: (context, state) => const OnBoardingScreen(),
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/login',
      builder: (context, state) => const LoginScreen(),
      redirect: (context, state) async {
        final sharedPref = await SharedPreferences.getInstance();
        final isFirstTime = sharedPref.getBool('is_first_time');

        if (isFirstTime == null) {
          return '/on_boarding';
        } else {
          null;
        }
        return null;
      },
    ),
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) => AppScaffold(child: child),
      routes: [
        GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            path: '/home',
            pageBuilder: (context, state) {
              return const NoTransitionPage(
                child: HomeScreen(),
              );
            },
            routes: [
              SlideTransitionRoute(
                path: 'reviews',
                parentNavigatorKey: _rootNavigatorKey,
                builder: (state) => const ReviewScreen(),
                directionTween: SlideTransitionRoute.leftToRightTween,
              ),
              GoRoute(
                parentNavigatorKey: _rootNavigatorKey,
                path: 'trending_anime',
                builder: (context, state) => const TrendingAnimeScreen(),
              ),
              GoRoute(
                parentNavigatorKey: _rootNavigatorKey,
                path: 'recommended_anime',
                builder: (context, state) => const RecommendedAnimeScreen(),
              ),
              GoRoute(
                parentNavigatorKey: _rootNavigatorKey,
                path: 'trending_manga',
                builder: (context, state) => const TrendingMangaScreen(),
              ),
              GoRoute(
                parentNavigatorKey: _rootNavigatorKey,
                path: 'recommended_manga',
                builder: (context, state) => const RecommendedMangaScreen(),
              ),
              GoRoute(
                parentNavigatorKey: _rootNavigatorKey,
                path: 'recommended_anime_slider',
                builder: (context, state) => const RecommendedAnimeSlider(),
              ),
              GoRoute(
                parentNavigatorKey: _rootNavigatorKey,
                path: 'trending_anime_slider',
                builder: (context, state) => const TrendingAnimeSlider(),
              ),
              GoRoute(
                parentNavigatorKey: _rootNavigatorKey,
                path: 'recommended_manga_slider',
                builder: (context, state) => const RecommendedMangaSlider(),
              ),
              GoRoute(
                parentNavigatorKey: _rootNavigatorKey,
                path: 'trending_manga_slider',
                builder: (context, state) => const TrendingMangaSlider(),
              )
            ]),
        GoRoute(
          parentNavigatorKey: _shellNavigatorKey,
          path: '/discover',
          pageBuilder: (context, state) {
            return const NoTransitionPage(
              child: DiscoverScreen(),
            );
          },
        ),
        GoRoute(
          parentNavigatorKey: _shellNavigatorKey,
          path: '/social',
          pageBuilder: (context, state) {
            return const NoTransitionPage(
              child: SocialScreen(),
            );
          },
        ),
        GoRoute(
          parentNavigatorKey: _shellNavigatorKey,
          path: '/my-list',
          pageBuilder: (context, state) {
            return const NoTransitionPage(
              child: MyListScreen(),
            );
          },
        ),
      ],
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
      path: '/on-boarding',
      builder: (context, state) => const OnBoardingScreen(),
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
  ],
  redirect: (context, state) {
    dev.log('Matched location: ${state.matchedLocation}',
        name: 'RouterRedirect');
    if (state.matchedLocation == '/') return null;

    final authState = context.read<AuthCubit>().state;
    final routeCubit = context.read<RedirectRouteCubit>();

    if (authState is UnAuthenticated) {
      if ((!routeCubit.isDesiredRouteSet() &&
              state.matchedLocation != '/login') ||
          (state.matchedLocation != '/home' &&
              state.matchedLocation != '/login')) {
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
