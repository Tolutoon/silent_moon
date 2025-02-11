import 'package:flutter/material.dart';

class BasicAppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final double? width;
  final double? height;
  const BasicAppButton(
      {super.key,
      required this.onPressed,
      required this.title,
      this.width,
      this.height});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
                splashFactory: NoSplash.splashFactory,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                minimumSize: Size.fromHeight(height ?? 7)),
            child: Text(
              title,
              style: TextStyle(color: Colors.white),
            )));
  }
}
