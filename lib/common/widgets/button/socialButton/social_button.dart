import 'package:flutter/material.dart';
import 'package:silent_moon/core/theme/app_colors.dart';

class SocialButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final Color? color;
  final String text;
  Color backgroundColor;
  final Color textColor;
  bool hasOutline;
  SocialButton(
      {super.key,
      required this.onPressed,
      required this.icon,
      this.color,
      required this.backgroundColor,
      required this.textColor,
      required this.text,
      this.hasOutline = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              elevation: 0,
              shadowColor: Colors.transparent,
              backgroundColor: backgroundColor,
              splashFactory: NoSplash.splashFactory,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(38),
                  side: hasOutline
                      ? const BorderSide(color: Colors.grey, width: 1)
                      : BorderSide.none),
              minimumSize: const Size.fromHeight(60)),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                icon,
                color: color,
              ),
              const SizedBox(
                width: 45,
              ),
              Text(
                text.toUpperCase(),
                style: TextStyle(color: textColor, fontWeight: FontWeight.w300),
              )
            ],
          )),
    );
  }
}
