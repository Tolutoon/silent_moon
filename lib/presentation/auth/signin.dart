import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:silent_moon/common/widgets/appbar/appbar.dart';
import 'package:silent_moon/common/widgets/button/socialButton/social_button.dart';
import 'package:silent_moon/common/widgets/input/basicInput/basicInput.dart';
import 'package:silent_moon/core/config/assets/app_images.dart';
import 'package:silent_moon/core/theme/app_colors.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // Makes AppBar overlay background
      backgroundColor: AppColors.backgroundColor, // Keeps scaffold background
      appBar: BasicAppBar(),
      body: Stack(
        children: [
          // Background Image positioned higher
          Positioned(
            top: -50, // Move the image upwards
            left: 0,
            right: 0,
            child: Image.asset(
              Appimages.backImg,
              width: double.infinity,
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height * 0.5, // Adjust height
            ),
          ),

          // Main content
          Column(
            children: [
              const SizedBox(height: kToolbarHeight + 40), // Space for AppBar
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        const Text(
                          "Welcome Back!",
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: AppColors.darkBlue,
                          ),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        SocialButton(
                          onPressed: () {},
                          icon: Icons.facebook,
                          color: Colors.white,
                          textColor: Colors.white,
                          backgroundColor: AppColors.secondary,
                          text: 'Continue with Facebook',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SocialButton(
                          hasOutline: true,
                          onPressed: () {},
                          icon: FontAwesomeIcons.google,
                          // color: Colors.white,
                          textColor: Colors.black,
                          backgroundColor: Colors.white,
                          text: 'Continue with Google',
                        ),
                        const SizedBox(
                          height: 42,
                        ),
                        const Text(
                          'OR LOGIN WITH YOUR EMAIL',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 42,
                        ),
                        BasicInputField(
                          hintText: 'Email Address',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
