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
          contentPadding: EdgeInsets.all(30),
          hintStyle: TextStyle(
              color: Color.fromARGB(255, 161, 164, 178),
              fontWeight: FontWeight.w400),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide.none,
          )),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              elevation: 0,
              textStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold))));
}
