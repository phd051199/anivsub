import 'package:anivsub/presentation/screen/bottom_navigation.dart';
import 'package:anivsub/presentation/screen/history/history.dart';
import 'package:anivsub/presentation/screen/home/home.dart';
import 'package:anivsub/presentation/screen/search/search.dart';
import 'package:anivsub/presentation/screen/setting/setting.dart';
import 'package:anivsub/presentation/screen/watch/watch.dart';
import 'package:anivsub/shared/shared_exports.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

enum Routes {
  home(path: '/', name: 'Home'),
  search(path: '/search', name: 'Search'),
  history(path: '/history', name: 'History'),
  setting(path: '/setting', name: 'Setting'),
  login(path: '/login', name: 'Login'),
  watch(path: '/watch', name: 'Watch');

  const Routes({required this.path, required this.name});

  final String path;
  final String name;
}

final goRouter = GoRouter(
  debugLogDiagnostics: kDebugMode,
  initialLocation: Routes.home.path,
  navigatorKey: _rootNavigatorKey,
  refreshListenable: authNotifier,
  routes: [
    _watchRoute,
    _bottomNavigationRoute,
  ],
);

final _watchRoute = GoRoute(
  name: Routes.watch.name,
  path: Routes.watch.path,
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
      routes: [_historyRoute],
    ),
    StatefulShellBranch(
      routes: [_settingRoute],
    ),
  ],
);

final _homeRoute = GoRoute(
  name: Routes.home.name,
  path: Routes.home.path,
  builder: (context, state) => const HomePage(),
);

final _searchRoute = GoRoute(
  name: Routes.search.name,
  path: Routes.search.path,
  builder: (context, state) => const SearchPage(),
);

final _historyRoute = GoRoute(
  name: Routes.history.name,
  path: Routes.history.path,
  builder: (context, state) => const HistoryPage(),
);

final _settingRoute = GoRoute(
  name: Routes.setting.name,
  path: Routes.setting.path,
  builder: (context, state) => const SettingPage(),
);
