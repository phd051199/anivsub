import 'package:anivsub/features/bottom_navigation/bottom_navigation.dart';
import 'package:anivsub/features/watch/watch.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:anivsub/features/home/home.dart';
import 'package:anivsub/features/login/login.dart';
import 'package:anivsub/features/profile/profile.dart';
import 'package:anivsub/features/search/search.dart';
import 'package:anivsub/features/settings/settings.dart';
import 'package:anivsub/core/di/shared_export.dart';
import 'package:anivsub/core/notifier/auth_notifier.dart';

abstract final class ScreenPaths {
  static const home = '/';
  static const search = '/search';
  static const profile = '/profile';
  static const settings = '/settings';
  static const login = '/login';
  static const watch = '/watch/:path';
}

abstract final class ScreenNames {
  static const home = 'Home';
  static const search = 'Search';
  static const profile = 'Profile';
  static const settings = 'Settings';
  static const login = 'Login';
  static const watch = 'Watch';
}

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

final goRouter = GoRouter(
  debugLogDiagnostics: kDebugMode,
  initialLocation: ScreenPaths.home,
  navigatorKey: _rootNavigatorKey,
  refreshListenable: authNotifier,
  redirect: (context, state) {
    if (authNotifier.status == AuthStatus.notAuthenticated) {
      return ScreenPaths.login;
    }
    if (authNotifier.status == AuthStatus.authenticated &&
        state.matchedLocation == ScreenPaths.login) {
      return ScreenPaths.home;
    }
    return null;
  },
  routes: [
    GoRoute(
      name: ScreenNames.login,
      path: ScreenPaths.login,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      name: ScreenNames.watch,
      path: ScreenPaths.watch,
      builder: (context, state) {
        final String path = state.pathParameters['path']!;

        return WatchPage(path: path);
      },
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => BottomNavigationPage(
        navigationShell: navigationShell,
      ),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: ScreenNames.home,
              path: ScreenPaths.home,
              builder: (context, state) => const HomePage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: ScreenNames.search,
              path: ScreenPaths.search,
              builder: (context, state) => const SearchPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: ScreenNames.profile,
              path: ScreenPaths.profile,
              builder: (context, state) => const ProfilePage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: ScreenNames.settings,
              path: ScreenPaths.settings,
              builder: (context, state) => const SettingsPage(),
            ),
          ],
        ),
      ],
    ),
  ],
);
