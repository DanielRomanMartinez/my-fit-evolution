import 'package:flutter/material.dart';
import 'package:my_fit_evolution/ui/theme/app_bar.dart';

class DietaryPatternScreen extends StatelessWidget {
  static const ROUTE = '/dietary-pattern';
  const DietaryPatternScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyFitEvolutionAppBar(showReturnButton: true),
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.only(top: 20),
        child: const Text(
          'Dietary Pattern Screen',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
