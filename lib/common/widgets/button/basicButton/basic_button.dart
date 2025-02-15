import 'package:flutter/material.dart';

class BasicAppButton extends StatelessWidget {
  final Color? color;
  final Color? textColor;
  final VoidCallback onPressed;
  final String title;
  final double? width;
  final double? height;

  const BasicAppButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.width,
    this.height,
    this.color,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(24),
          backgroundColor:
              color ?? Theme.of(context).primaryColor, // Provide default color
          splashFactory: NoSplash.splashFactory,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
          minimumSize: Size.fromHeight(height ?? 7),
        ),
        child: Text(
          title.toUpperCase(),
          style: TextStyle(
            color: textColor ??
                Colors.white, // Use null coalescing instead of force unwrap
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
