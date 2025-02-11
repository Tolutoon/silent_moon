import 'package:flutter/material.dart';
import 'package:silent_moon/core/theme/app_colors.dart';

class AppTheme {
  static final theme = ThemeData(
      primaryColor: AppColors.primary,
      fontFamily: 'HelveticaNeue',
      scaffoldBackgroundColor: AppColors.backgroundColor,
      brightness: Brightness.light,
      inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: Color.fromARGB(255, 242, 243, 247),
          contentPadding: const EdgeInsets.all(30),
          hintStyle: const TextStyle(
              color: Color.fromARGB(255, 161, 164, 178),
              fontWeight: FontWeight.w400),
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none));
}
