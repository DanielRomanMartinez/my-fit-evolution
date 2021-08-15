import 'package:flutter/material.dart';
import 'package:my_fit_evolution/ui/theme/app_bar.dart';

part 'widgets/information_item.dart';

class BioInformationScreen extends StatelessWidget {
  static const ROUTE = '/bio-information';
  const BioInformationScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyFitEvolutionAppBar(showReturnButton: true),
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    alignment: Alignment.topLeft,
                    color: Colors.black,
                    onPressed: () {
                      print('Previous');
                    },
                    icon: const Icon(Icons.chevron_left),
                  ),
                  const Text(
                    'Num Control',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  IconButton(
                    color: Colors.black,
                    onPressed: () {
                      print('Next');
                    },
                    icon: const Icon(Icons.chevron_right),
                  ),
                ],
              ),
              const Text(
                '24/02/2021',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              const Text(
                '19:50h',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              const Text(
                '86.5',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                ),
                child: const Center(
                  child: Text(
                    'Pliegues Cutaneos',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  const InformationItem(
                    name: 'Biceeps',
                    value: '10',
                    icon: Icons.multiline_chart,
                    background: false,
                  ),
                  const InformationItem(
                    name: 'Pectoral',
                    value: '10',
                    icon: Icons.multiline_chart,
                    background: true,
                  ),
                  const InformationItem(
                    name: 'Suprailíaco',
                    value: '10',
                    icon: Icons.multiline_chart,
                    background: false,
                  ),
                  const InformationItem(
                    name: 'Abdominal',
                    value: '10',
                    icon: Icons.multiline_chart,
                    background: true,
                  ),
                  const InformationItem(
                    name: 'Tríceps',
                    value: '10',
                    icon: Icons.multiline_chart,
                    background: false,
                  ),
                  const InformationItem(
                    name: 'Subescapular',
                    value: '10',
                    icon: Icons.multiline_chart,
                    background: true,
                  ),
                  const InformationItem(
                    name: 'Anterior Muslo',
                    value: '10',
                    icon: Icons.multiline_chart,
                    background: false,
                  ),
                  const InformationItem(
                    name: 'Gemelo',
                    value: '10',
                    icon: Icons.multiline_chart,
                    background: true,
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                ),
                child: const Center(
                  child: Text(
                    'Perímetros Corporales (contornos)',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  const InformationItem(
                    name: 'Pecho-Espalda',
                    value: '10',
                    icon: Icons.multiline_chart,
                    background: false,
                  ),
                  const InformationItem(
                    name: 'Caja-Expansión',
                    value: '10',
                    icon: Icons.multiline_chart,
                    background: true,
                  ),
                  const InformationItem(
                    name: 'Brazo Dc relajado',
                    value: '10',
                    icon: Icons.multiline_chart,
                    background: false,
                  ),
                  const InformationItem(
                    name: 'Brazo Iz relajado',
                    value: '10',
                    icon: Icons.multiline_chart,
                    background: true,
                  ),
                  const InformationItem(
                    name: 'Brazo Dc contraido',
                    value: '10',
                    icon: Icons.multiline_chart,
                    background: false,
                  ),
                  const InformationItem(
                    name: 'Brazo Iz contraido',
                    value: '10',
                    icon: Icons.multiline_chart,
                    background: true,
                  ),
                  const InformationItem(
                    name: 'Abdomen (ombligo)',
                    value: '10',
                    icon: Icons.multiline_chart,
                    background: false,
                  ),
                  const InformationItem(
                    name: 'Muslo Dcho relajado',
                    value: '10',
                    icon: Icons.multiline_chart,
                    background: true,
                  ),
                  const InformationItem(
                    name: 'Muslo Izq relajado',
                    value: '10',
                    icon: Icons.multiline_chart,
                    background: false,
                  ),
                  const InformationItem(
                    name: 'Gemelo Dcho 90º',
                    value: '10',
                    icon: Icons.multiline_chart,
                    background: true,
                  ),
                  const InformationItem(
                    name: 'Gemelo Izq 90º',
                    value: '10',
                    icon: Icons.multiline_chart,
                    background: false,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
