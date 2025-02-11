import 'package:flutter/material.dart';
import 'package:silent_moon/common/appbar/appbar.dart';
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
                  child: Text(
                    "Welcome Back!",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
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
