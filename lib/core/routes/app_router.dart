import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:silent_moon/presentation/auth/sigin_signup.dart';
import 'package:silent_moon/presentation/auth/signup.dart';

final GoRouter appRouter = GoRouter(routes: <RouteBase>[
  GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) =>
          SignInSignUpScreen()),
  GoRoute(
      path: '/signup',
      builder: (BuildContext context, GoRouterState state) => SignUpPage())
]);