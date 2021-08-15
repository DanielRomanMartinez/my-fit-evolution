import 'package:flutter/material.dart';
import 'package:my_fit_evolution/ui/theme/app_bar.dart';

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
              margin: const EdgeInsetsDirectional.only(top: 10),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 2.05,
                ),
                itemBuilder: (context, index) => _infoBox(),
              ),
            ),
          ],
          controller: _controller,
        ),
      ),
    );
  }

  InkWell _infoBox() {
    return InkWell(
      onTap: () {
        print("Dashboard box");
      },
      child: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          boxShadow: [
            const BoxShadow(
              color: Color(0x5a1e2021),
              offset: Offset(0, 2),
              blurRadius: 6,
              spreadRadius: 0,
            )
          ],
          color: Colors.blue,
        ),
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Title',
                overflow: TextOverflow.clip,
                style: const TextStyle(
                  fontSize: 9,
                  color: Colors.black54,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  'Subtitle',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                    fontSize: 12.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
