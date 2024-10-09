import 'package:anivsub/core/shared/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavigationPage extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const BottomNavigationPage({
    super.key,
    required this.navigationShell,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _getScreenTitle(context, navigationShell.currentIndex),
          style: context.textTheme.headlineLarge!.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
      ),
      body: navigationShell,
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
        icon: const Icon(Icons.person),
        label: context.l10n.profile,
      ),
      NavigationDestination(
        icon: const Icon(Icons.settings),
        label: context.l10n.settings,
      ),
    ];
  }

  String _getScreenTitle(BuildContext context, int index) {
    var titles = [
      context.l10n.home,
      context.l10n.search,
      context.l10n.profile,
      context.l10n.settings,
    ];

    return (index >= 0 && index < titles.length) ? titles[index] : '';
  }
}