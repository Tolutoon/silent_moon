import 'package:silent_moon/import.dart';

class HomeCard extends StatelessWidget {
  final Color color;
  const HomeCard({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(10),
      clipBehavior: Clip.antiAlias,
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(child: Image.asset(Appimages.increaseHappiness))
          ],
        ),
      ),
    );
  }
}
