import 'package:flutter/material.dart';
import 'package:silent_moon/common/widgets/appbar/appbar.dart';
import 'package:silent_moon/core/config/assets/app_images.dart';
import 'package:silent_moon/import.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: const BasicAppBar(
        route: '/',
      ),
      body: Stack(
        children: [
          Positioned(
              child: Image.asset(
            Appimages.backImg,
            width: double.infinity,
            fit: BoxFit.cover,
            height: height * 0.4,
          )),

          //main content
          const Column(
            children: [
              SizedBox(
                height: kToolbarHeight + 40,
              ),
              Expanded(
                  child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          "Create your account",
                          style: TextStyle(
                              fontSize: 32, color: AppColors.darkBlue),
                        ),
                      ],
                    ),
                  ),
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}
