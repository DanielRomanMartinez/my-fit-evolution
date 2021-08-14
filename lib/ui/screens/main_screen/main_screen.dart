import 'package:flutter/material.dart';
import 'package:my_fit_evolution/ui/theme/app_bar.dart';

class MainScreen extends StatelessWidget {

  static const ROUTE = '/main';

  const MainScreen();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: const MyFitEvolutionAppBar(),
      body: Text('Main Screen'),
    );
  }
}
