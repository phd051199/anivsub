part of 'go_router_config.dart';

class KeyboardControlObserver extends NavigatorObserver {
  static const Set<String> _routesWithKeyboard = {
    ScreenNames.search,
  };

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _handleRouteChange(route, previousRoute);
    super.didPush(route, previousRoute);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _handleRouteChange(route, previousRoute);
    super.didPop(route, previousRoute);
  }

  void _handleRouteChange(Route<dynamic> route, Route<dynamic>? previousRoute) {
    final String? currentRouteName = route.settings.name;

    if (currentRouteName != null &&
        !_routesWithKeyboard.contains(currentRouteName)) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        FocusManager.instance.primaryFocus?.unfocus();
      });
    }
  }
}
