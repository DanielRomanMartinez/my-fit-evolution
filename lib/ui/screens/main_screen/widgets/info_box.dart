part of '../main_screen.dart';

class InfoBox extends StatelessWidget {

  final DashboardInfoBox dashboardInfoBox;

  const InfoBox ({
    required this.dashboardInfoBox
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(dashboardInfoBox.routeName);
      },
      child: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          boxShadow: [
            BoxShadow(
              color: Colors.red,
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
                dashboardInfoBox.title,
                overflow: TextOverflow.clip,
                style: const TextStyle(
                  fontSize: 9,
                  color: Colors.black54,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Text(
                  dashboardInfoBox.subtitle,
                  style: const TextStyle(
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
