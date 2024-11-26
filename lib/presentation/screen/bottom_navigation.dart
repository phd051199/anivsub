import 'package:anivsub/resources/localization.dart';
import 'package:anivsub/shared/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    super.key,
    required this.navigationShell,
  });
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _getScreenTitle(context, navigationShell.currentIndex),
          style: context.textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
      ),
      body: SafeArea(
        child: navigationShell,
      ),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  Widget _buildBottomNavigationBar(BuildContext context) {
    return NavigationBar(
      destinations: _getNavigationDestinations(context),
      selectedIndex: navigationShell.currentIndex,
      onDestinationSelected: (index) {
        navigationShell.goBranch(
          index,
          initialLocation: index == navigationShell.currentIndex,
        );
      },
    );
  }

  List<NavigationDestination> _getNavigationDestinations(BuildContext context) {
    return [
      NavigationDestination(
        icon: const Icon(Icons.home_filled),
        label: S.current.home,
      ),
      NavigationDestination(
        icon: const Icon(Icons.search),
        label: S.current.search,
      ),
      NavigationDestination(
        icon: const Icon(Icons.history),
        label: S.current.history,
      ),
      NavigationDestination(
        icon: const Icon(Icons.settings),
        label: S.current.setting,
      ),
    ];
  }

  String _getScreenTitle(BuildContext context, int index) {
    final titles = [
      S.current.home,
      S.current.search,
      S.current.history,
      S.current.setting,
    ];

    return (index >= 0 && index < titles.length) ? titles[index] : '';
  }
}
