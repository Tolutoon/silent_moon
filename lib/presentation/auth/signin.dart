import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:silent_moon/common/widgets/appbar/appbar.dart';
import 'package:silent_moon/common/widgets/button/basicButton/basic_button.dart';
import 'package:silent_moon/common/widgets/button/socialButton/social_button.dart';
import 'package:silent_moon/common/widgets/input/basicInput/basicInput.dart';
import 'package:silent_moon/core/config/assets/app_images.dart';
import 'package:silent_moon/core/theme/app_colors.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

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
              height: MediaQuery.of(context).size.height * 0.4, // Adjust height
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
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const Text(
                            "Welcome Back!",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: AppColors.darkBlue,
                            ),
                          ),
                          SizedBox(
                            height: height * 0.04,
                          ),
                          SocialButton(
                            onPressed: () {},
                            icon: Icons.facebook,
                            color: Colors.white,
                            textColor: Colors.white,
                            backgroundColor: AppColors.secondary,
                            text: 'Continue with Facebook',
                          ),
                          SizedBox(
                            height: height * 0.025,
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
                          SizedBox(
                            height: height * 0.05,
                          ),
                          const Text(
                            'OR LOG IN WITH YOUR EMAIL',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: height * 0.05,
                          ),
                          BasicInputField(
                            hintText: 'Email Address',
                          ),
                          SizedBox(
                            height: height * 0.025,
                          ),
                          BasicInputField(
                            hintText: 'Password',
                          ),
                          SizedBox(
                            height: height * 0.05,
                          ),
                          BasicAppButton(
                            onPressed: () {},
                            title: 'Log In',
                            height: 70,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'Forgot Password?',
                            style: TextStyle(color: AppColors.primary),
                          ),
                          SizedBox(
                            height: height * 0.1,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'ALREADY HAVE AN ACCOUNT?',
                                style: TextStyle(color: AppColors.lightGrey),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Text(
                                'SIGN UP',
                                style: TextStyle(color: AppColors.primary),
                              )
                            ],
                          )
                        ],
                      ),
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
