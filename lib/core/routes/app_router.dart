import 'package:silent_moon/import.dart';

final GoRouter appRouter = GoRouter(initialLocation: '/', routes: <RouteBase>[
  GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) =>
          const SignInSignUpScreen()),
  GoRoute(
      path: '/signup',
      builder: (BuildContext context, GoRouterState state) =>
          const SignUpPage()),
  GoRoute(
      path: '/signin',
      builder: (BuildContext context, GoRouterState state) =>
          const SignInPage()),
  GoRoute(
      path: '/signin',
      builder: (BuildContext context, GoRouterState state) =>
          const SignInPage()),
]);
