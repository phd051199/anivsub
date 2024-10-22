import 'package:anivsub/core/shared/context_extension.dart';
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
          style: context.textTheme.headlineMedium!.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        flexibleSpace: GestureDetector(
          onTap: FocusManager.instance.primaryFocus?.unfocus,
        ),
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
