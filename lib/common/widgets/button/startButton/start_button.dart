import 'package:silent_moon/import.dart';

class StartButton extends StatelessWidget {
  const StartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(8)),
        onPressed: () {},
        child: Text('Start'));
  }
}
