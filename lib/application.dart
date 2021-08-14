import 'package:flutter/material.dart';
import 'package:my_fit_evolution/routes.dart';
import 'package:my_fit_evolution/ui/screens/main_screen/main_screen.dart';
import 'package:my_fit_evolution/ui/theme/app_theme.dart';

class MyFitEvolution extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: MainScreen.ROUTE,
      theme: AppTheme.lightTheme.copyWith(
        appBarTheme: Theme.of(context).appBarTheme.copyWith(brightness: Brightness.dark),
      ),
      routes: routes,
    );
  }
}