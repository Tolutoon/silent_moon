import 'package:flutter/material.dart';
import 'package:silent_moon/core/config/assets/app_images.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          //background image
          Image.asset(
            Appimages.onboardingBg,
            width: width,
            height: height,
          )
        ],
      ),
    );
  }
}
