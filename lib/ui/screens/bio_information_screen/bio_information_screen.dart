import 'package:flutter/material.dart';
import 'package:my_fit_evolution/ui/theme/app_bar.dart';

part 'widgets/information_item.dart';

class BioInformationScreen extends StatelessWidget {
  static const ROUTE = '/bio-information';

  static const Set<Map<String, dynamic>> plieguesCutaneos = {
    {
      'name': 'Biceps',
      'value': '10',
      'icon': Icons.multiline_chart,
      'isBetterPerformance': false,
    },
    {
      'name': 'Pectoral',
      'value': '10',
      'icon': Icons.multiline_chart,
      'isBetterPerformance': false,
    },
    {
      'name': 'Suprailíaco',
      'value': '10',
      'icon': Icons.multiline_chart,
      'isBetterPerformance': true,
    },
    {
      'name': 'Abdominal',
      'value': '10',
      'icon': Icons.multiline_chart,
      'isBetterPerformance': true,
    },
    {
      'name': 'Triceps',
      'value': '10',
      'icon': Icons.multiline_chart,
      'isBetterPerformance': false,
    },
    {
      'name': 'Subescapular',
      'value': '10',
      'icon': Icons.multiline_chart,
      'isBetterPerformance': true,
    },
    {
      'name': 'Anterior Muslo',
      'value': '10',
      'icon': Icons.multiline_chart,
      'isBetterPerformance': false,
    },
    {
      'name': 'Gemelo',
      'value': '10',
      'icon': Icons.multiline_chart,
      'isBetterPerformance': true,
    },
  };
  static const Set<Map<String, dynamic>> perimetrosCorporales = {
    {
      'name': 'Pecho-Espalda',
      'value': '10',
      'icon': Icons.multiline_chart,
      'isBetterPerformance': false,
    },
    {
      'name': 'Caja-Expansión',
      'value': '10',
      'icon': Icons.multiline_chart,
      'isBetterPerformance': false,
    },
    {
      'name': 'Brazo Dc relajado',
      'value': '10',
      'icon': Icons.multiline_chart,
      'isBetterPerformance': true,
    },
    {
      'name': 'Brazo Iz relajado',
      'value': '10',
      'icon': Icons.multiline_chart,
      'isBetterPerformance': true,
    },
    {
      'name': 'Brazo Dc contraido',
      'value': '10',
      'icon': Icons.multiline_chart,
      'isBetterPerformance': false,
    },
    {
      'name': 'Brazo Iz contraido',
      'value': '10',
      'icon': Icons.multiline_chart,
      'isBetterPerformance': true,
    },
    {
      'name': 'Abdomen (ombligo)',
      'value': '10',
      'icon': Icons.multiline_chart,
      'isBetterPerformance': false,
    },
    {
      'name': 'Muslo Dcho relajado',
      'value': '10',
      'icon': Icons.multiline_chart,
      'isBetterPerformance': true,
    },
    {
      'name': 'Muslo Izq relajado',
      'value': '10',
      'icon': Icons.multiline_chart,
      'isBetterPerformance': true,
    },
    {
      'name': 'Gemelo Dcho 90º',
      'value': '10',
      'icon': Icons.multiline_chart,
      'isBetterPerformance': true,
    },
    {
      'name': 'Gemelo Izq 90º',
      'value': '10',
      'icon': Icons.multiline_chart,
      'isBetterPerformance': false,
    },
  };

  const BioInformationScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const MyFitEvolutionAppBar(showReturnButton: true),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.cyanAccent,
              child: Row(
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
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
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
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          iconSize: 32,
                          icon: const Icon(Icons.insert_chart),
                          color: Colors.black,
                          onPressed: () => print('open chart'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          iconSize: 32,
                          icon: const Icon(Icons.picture_as_pdf),
                          color: Colors.black,
                          onPressed: () => print('download pdf'),
                        ),
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
                        'Pliegues Cutaneos',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: plieguesCutaneos.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.5,
                    ),
                    itemBuilder: (context, index) => InformationItem(
                      icon: plieguesCutaneos.elementAt(index)['icon'],
                      value: plieguesCutaneos.elementAt(index)['value'],
                      isBetterPerformance: plieguesCutaneos.elementAt(index)['isBetterPerformance'],
                    ),
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
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: perimetrosCorporales.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.5,
                    ),
                    itemBuilder: (context, index) => InformationItem(
                      icon: perimetrosCorporales.elementAt(index)['icon'],
                      value: perimetrosCorporales.elementAt(index)['value'],
                      isBetterPerformance: perimetrosCorporales.elementAt(index)['isBetterPerformance'],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
