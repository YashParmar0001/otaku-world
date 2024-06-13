part of 'router.dart';

final bottomNavRoutes = StatefulShellRoute.indexedStack(
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
);