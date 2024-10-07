import 'package:anivsub/features/watch/watch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:anivsub/features/bottom_navigation_screen.dart';
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
  static const watch = '/watch';
}

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

final goRouter = GoRouter(
  debugLogDiagnostics: true,
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
      path: ScreenPaths.login,
      builder: (context, state) => BlocProvider(
        create: (context) => LoginCubit(authUseCases),
        child: const LoginScreen(),
      ),
    ),
    GoRoute(
      path: ScreenPaths.watch,
      builder: (context, state) {
        return BlocProvider(
          create: (context) => WatchBloc(),
          child: const WatchPage(),
        );
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
              path: ScreenPaths.home,
              builder: (context, state) => BlocProvider(
                create: (context) => HomeCubit(homeUseCases),
                child: const HomePage(),
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: ScreenPaths.search,
              builder: (context, state) => BlocProvider(
                create: (context) => SearchCubit(),
                child: const SearchPage(),
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: ScreenPaths.profile,
              builder: (context, state) => BlocProvider(
                create: (context) => ProfileCubit(profileUseCases),
                child: const ProfilePage(),
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: ScreenPaths.settings,
              builder: (context, state) => BlocProvider(
                create: (context) => SettingsCubit(),
                child: const SettingsPage(),
              ),
            ),
          ],
        ),
      ],
    ),
  ],
);
