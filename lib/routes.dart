import 'package:flutter/material.dart';

import 'package:my_fit_evolution/ui/screens/main_screen/main_screen.dart';

Map<String, WidgetBuilder> _routeGenerator() {
  final Map<String, WidgetBuilder> routes = {
    MainScreen.ROUTE: (_) => MainScreen(),
  };
  return routes;
}

final routes = _routeGenerator();

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();
