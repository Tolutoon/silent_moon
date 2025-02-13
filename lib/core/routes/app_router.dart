import 'package:silent_moon/import.dart';

final GoRouter appRouter = GoRouter(routes: <RouteBase>[
  GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) =>
          const SignInSignUpScreen()),
  GoRoute(
      path: '/signup',
      builder: (BuildContext context, GoRouterState state) => SignUpPage()),
  GoRoute(
      path: '/signin',
      builder: (BuildContext context, GoRouterState state) => SignInPage())
]);
