import 'package:flutter/material.dart';
import 'package:silent_moon/core/theme/app_colors.dart';

class SocialButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  const SocialButton({super.key, required this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.secondary,
            splashFactory: NoSplash.splashFactory,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            minimumSize: Size.fromHeight(60)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(icon),
            const SizedBox(
              width: 42,
            ),
            Text('CONTINUE WITH FACEBOOK')
          ],
        ));
  }
}
