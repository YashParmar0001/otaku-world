import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideTransitionRoute extends GoRoute {
  static final leftToRightTween = Tween<Offset>(
    begin: const Offset(1.0, 0.0),
    end: Offset.zero,
  );

  SlideTransitionRoute({
    required String path,
    required GlobalKey<NavigatorState> parentNavigatorKey,
    required Widget Function(GoRouterState state) builder,
    required Tween<Offset> directionTween,
    List<RouteBase> routes = const [],
  }) : super(
    path: path,
    parentNavigatorKey: parentNavigatorKey,
    routes: routes,
    pageBuilder: (context, state) {
      return CustomTransitionPage(
        child: builder(state),
        transitionsBuilder: (
            context,
            animation,
            secondaryAnimation,
            child,
            ) {
          return SlideTransition(
            position: directionTween.animate(animation),
            child: child,
          );
        },
      );
    },
  );
}