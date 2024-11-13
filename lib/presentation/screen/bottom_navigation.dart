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
        forceMaterialTransparency: true,
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
        label: context.l10n.home,
      ),
      NavigationDestination(
        icon: const Icon(Icons.search),
        label: context.l10n.search,
      ),
      NavigationDestination(
        icon: const Icon(Icons.history),
        label: context.l10n.history,
      ),
      NavigationDestination(
        icon: const Icon(Icons.settings),
        label: context.l10n.setting,
      ),
    ];
  }

  String _getScreenTitle(BuildContext context, int index) {
    final titles = [
      context.l10n.home,
      context.l10n.search,
      context.l10n.history,
      context.l10n.setting,
    ];

    return (index >= 0 && index < titles.length) ? titles[index] : '';
  }
}
