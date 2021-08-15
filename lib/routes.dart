import 'package:flutter/material.dart';
import 'package:my_fit_evolution/ui/screens/bio_information_screen/bio_information_screen.dart';
import 'package:my_fit_evolution/ui/screens/dietary_pattern_screen/dietary_pattern_screen.dart';

import 'package:my_fit_evolution/ui/screens/main_screen/main_screen.dart';
import 'package:my_fit_evolution/ui/screens/personal_records_screen/personal_records_screen.dart';
import 'package:my_fit_evolution/ui/screens/training_pattern_screen/training_pattern_screen.dart';

Map<String, WidgetBuilder> _routeGenerator() {
  final Map<String, WidgetBuilder> routes = {
    MainScreen.ROUTE: (_) => MainScreen(),
    BioInformationScreen.ROUTE: (_) => const BioInformationScreen(),
    DietaryPatternScreen.ROUTE: (_) => const DietaryPatternScreen(),
    TrainingPatternScreen.ROUTE: (_) => const TrainingPatternScreen (),
    PersonalRecordsScreen.ROUTE: (_) => const PersonalRecordsScreen(),
  };
  return routes;
}

final routes = _routeGenerator();

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();
