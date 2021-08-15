import 'package:my_fit_evolution/ui/screens/bio_information_screen/bio_information_screen.dart';
import 'package:my_fit_evolution/ui/screens/dietary_pattern_screen/dietary_pattern_screen.dart';
import 'package:my_fit_evolution/ui/screens/personal_records_screen/personal_records_screen.dart';
import 'package:my_fit_evolution/ui/screens/training_pattern_screen/training_pattern_screen.dart';

abstract class Config {
  static const List<String> DASHBOARD_BOXES = [
    BioInformationScreen.ROUTE,
    DietaryPatternScreen.ROUTE,
    TrainingPatternScreen.ROUTE,
    PersonalRecordsScreen.ROUTE,
  ];
}
