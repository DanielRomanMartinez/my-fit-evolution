part of '../bio_information_screen.dart';

class InformationItem extends StatelessWidget {
  final IconData icon;
  final String value;
  final bool isBetterPerformance;

  const InformationItem({
    required this.icon,
    required this.value,
    required this.isBetterPerformance,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: Colors.amberAccent,
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Center(
                child: Icon(
                  icon,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(right: 10, left: 10),
            decoration: BoxDecoration(
              color: isBetterPerformance ? Colors.lightGreen : Colors.redAccent,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
            ),
            child: Center(
              child: Text(
                value,
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
