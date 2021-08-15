part of '../bio_information_screen.dart';

class InformationItem extends StatelessWidget {

  final IconData icon;
  final String name;
  final String value;
  final bool background;

  const InformationItem({
    required this.icon,
    required this.name,
    required this.value,
    required this.background,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: background ? Colors.lightGreen : Colors.lightBlue,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Icon(
              icon,
              color: Colors.blue,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                name,
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Text(
              value,
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
