import 'package:flutter/material.dart';
import 'package:my_fit_evolution/ui/theme/app_bar.dart';

class PersonalRecordsScreen extends StatelessWidget {
  static const ROUTE = '/personal-records';
  const PersonalRecordsScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyFitEvolutionAppBar(showReturnButton: true),
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.only(top: 20),
        child: const Text(
          'Personal Records Screen',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
