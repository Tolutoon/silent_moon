import '../../../import.dart';

class ErrorDialog extends StatelessWidget {
  final String errorMessage;
  const ErrorDialog({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Error'),
      content: Text(errorMessage),
      actions: [
        TextButton(
            onPressed: () {
      
              context.go('/');
            },
            child: Text('ok'))
      ],
    );
  }
}
