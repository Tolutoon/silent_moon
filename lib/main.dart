import 'package:flutter/material.dart';
import 'package:silent_moon/core/theme/app_theme.dart';
import 'package:silent_moon/presentation/auth/sigin_signup.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(routes: <RouteBase>[
  GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) =>
          SignInSignUpScreen())
]);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: const SignInSignUpScreen(),
    );
  }
}
