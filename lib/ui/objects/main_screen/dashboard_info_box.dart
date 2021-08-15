import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_fit_evolution/ui/screens/bio_information_screen/bio_information_screen.dart';
import 'package:my_fit_evolution/ui/screens/dietary_pattern_screen/dietary_pattern_screen.dart';
import 'package:my_fit_evolution/ui/screens/personal_records_screen/personal_records_screen.dart';
import 'package:my_fit_evolution/ui/screens/training_pattern_screen/training_pattern_screen.dart';

part 'dashboard_info_box.freezed.dart';

@freezed
class DashboardInfoBox with _$DashboardInfoBox {

  const factory DashboardInfoBox({
    required String title,
    required String subtitle,
    required String routeName,
  }) = _DashboardInfoBox;

  factory DashboardInfoBox.fromBoxName({
    required String boxName,
  }) {

    switch (boxName) {
      case BioInformationScreen.ROUTE:
        return const DashboardInfoBox(
          title: 'Datos Bio',
          subtitle: 'Datos Bio subtitulo',
          routeName: BioInformationScreen.ROUTE,
        );
      case DietaryPatternScreen.ROUTE:
        return const DashboardInfoBox(
          title: 'Pauta Alimenticia',
          subtitle: 'Pauta Alimenticia subtitulo',
          routeName: DietaryPatternScreen.ROUTE,
        );
      case TrainingPatternScreen.ROUTE:
        return const DashboardInfoBox(
          title: 'Pauta Entreno',
          subtitle: 'Pauta Entreno subtitulo',
          routeName: TrainingPatternScreen.ROUTE,
        );
      case PersonalRecordsScreen.ROUTE:
        return const DashboardInfoBox(
          title: 'Personal Records',
          subtitle: 'Personal Records subtitulo',
          routeName: PersonalRecordsScreen.ROUTE,
        );
      default:
        throw UnimplementedError();
    }
  }
}
