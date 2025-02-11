import 'package:flutter/material.dart';
import 'package:silent_moon/core/theme/app_theme.dart';
import 'package:silent_moon/presentation/auth/signin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: const SignUpScreen(),
    );
  }
}
