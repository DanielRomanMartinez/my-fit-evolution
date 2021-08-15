import 'package:flutter/material.dart';
import 'package:my_fit_evolution/ui/objects/main_screen/dashboard_info_box.dart';
import 'package:my_fit_evolution/ui/theme/app_bar.dart';
import 'package:my_fit_evolution/config.dart';

part 'widgets/info_box.dart';

class MainScreen extends StatefulWidget {
  static const ROUTE = '/main';

  MainScreen();

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late ScrollController _controller;

  @override
  void initState() {
    _controller = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyFitEvolutionAppBar(),
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsetsDirectional.only(start: 16.0, end: 16.0),
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10, left: 10),
              child: const Text(
                'Hello Dani Roman',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 26,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 10),
              child: const Text(
                'Welcome to My Fit Evolution',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsetsDirectional.only(top: 10),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: Config.DASHBOARD_BOXES.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 2.5,
                ),
                itemBuilder: (context, index) => InfoBox(
                  dashboardInfoBox: DashboardInfoBox.fromBoxName(
                    boxName: Config.DASHBOARD_BOXES[index],
                  ),
                ),
              ),
            ),
          ],
          controller: _controller,
        ),
      ),
    );
  }
}
