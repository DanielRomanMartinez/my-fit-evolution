import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_fit_evolution/application.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyFitEvolution());
}