import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:silent_moon/common/button/basicButton/basic_button.dart';
import 'package:silent_moon/core/config/assets/app_images.dart';
import 'package:silent_moon/core/config/assets/app_vectors.dart';
import 'package:silent_moon/core/theme/app_colors.dart';
import 'package:silent_moon/presentation/auth/signin.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 6,
      ),
      body: Stack(
        children: [
          //background image
          Image.asset(
            Appimages.onboardingBg,
            width: width,
            height: height,
            fit: BoxFit.cover,
          ),
          //content overlay
          SingleChildScrollView(
              child: SafeArea(
                  child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: SizedBox(
                      height: 50,
                      width: 120,
                      child: SvgPicture.asset(
                        AppVectors.silentMoonSvg,
                      )),
                ),
                const SizedBox(
                  height: 32,
                ),
                Image.asset(Appimages.signUpImage),
                const SizedBox(
                  height: 132,
                ),
                const Text(
                  'We are what we do',
                  style: TextStyle(
                      color: AppColors.darkBlue,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Thousands of people are using silent moon \n for smalls meditation',
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                      color: AppColors.lightGrey),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 62,
                ),
                BasicAppButton(onPressed: () {}, title: 'Sign up'),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account',
                      style: TextStyle(color: AppColors.lightGrey),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignInPage()));
                      },
                      child: const Text(
                        'Log in',
                        style: TextStyle(color: AppColors.primary),
                      ),
                    )
                  ],
                )
              ],
            ),
          )))
        ],
      ),
    );
  }
}
