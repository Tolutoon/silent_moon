import 'package:silent_moon/import.dart';

class SuccessDialog extends StatelessWidget {
  final String content;
  final String path;
  const SuccessDialog({super.key, required this.content, required this.path});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Signup Successful'),
      content: Text(content),
      actions: [
        TextButton(
            onPressed: () {
              context.go(path);
            },
            child: const Text('Proceed'))
      ],
    );
  }
}
