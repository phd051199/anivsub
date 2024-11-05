import 'package:anivsub/app/notifier/auth_notifier.dart';
import 'package:anivsub/presentation/screen/bottom_navigation.dart';
import 'package:anivsub/presentation/screen/home/home.dart';
import 'package:anivsub/presentation/screen/login/login.dart';
import 'package:anivsub/presentation/screen/profile/profile.dart';
import 'package:anivsub/presentation/screen/search/search.dart';
import 'package:anivsub/presentation/screen/setting/setting.dart';
import 'package:anivsub/presentation/screen/watch/watch.dart';
import 'package:anivsub/shared/di/shared_export.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'screen_names.dart';
part 'screen_paths.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

final goRouter = GoRouter(
  debugLogDiagnostics: kDebugMode,
  initialLocation: ScreenPaths.home,
  navigatorKey: _rootNavigatorKey,
  refreshListenable: authNotifier,
  redirect: _handleRedirect,
  routes: [
    _loginRoute,
    _watchRoute,
    _bottomNavigationRoute,
  ],
);

String? _handleRedirect(BuildContext context, GoRouterState state) {
  if (authNotifier.status == AuthStatus.notAuthenticated) {
    return ScreenPaths.login;
  }
  if (authNotifier.status == AuthStatus.authenticated &&
      state.matchedLocation == ScreenPaths.login) {
    return ScreenPaths.home;
  }
  return null;
}

final _loginRoute = GoRoute(
  name: ScreenNames.login,
  path: ScreenPaths.login,
  builder: (context, state) => const LoginScreen(),
);

final _watchRoute = GoRoute(
  name: ScreenNames.watch,
  path: ScreenPaths.watch,
  builder: (context, state) => WatchPage(
    path: state.uri.queryParameters['path']!,
    tag: state.uri.queryParameters['tag'],
  ),
);

final _bottomNavigationRoute = StatefulShellRoute.indexedStack(
  builder: (context, state, navigationShell) => BottomNavigation(
    navigationShell: navigationShell,
  ),
  branches: [
    StatefulShellBranch(
      routes: [_homeRoute],
    ),
    StatefulShellBranch(
      routes: [_searchRoute],
    ),
    StatefulShellBranch(
      routes: [_profileRoute],
    ),
    StatefulShellBranch(
      routes: [_settingRoute],
    ),
  ],
);

final _homeRoute = GoRoute(
  name: ScreenNames.home,
  path: ScreenPaths.home,
  builder: (context, state) => const HomePage(),
);

final _searchRoute = GoRoute(
  name: ScreenNames.search,
  path: ScreenPaths.search,
  builder: (context, state) => const SearchPage(),
);

final _profileRoute = GoRoute(
  name: ScreenNames.profile,
  path: ScreenPaths.profile,
  builder: (context, state) => const ProfilePage(),
);

final _settingRoute = GoRoute(
  name: ScreenNames.setting,
  path: ScreenPaths.setting,
  builder: (context, state) => const SettingPage(),
);
