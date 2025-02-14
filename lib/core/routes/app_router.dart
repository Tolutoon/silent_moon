import 'package:silent_moon/auth/auth_gate.dart';
import 'package:silent_moon/import.dart';
import 'package:silent_moon/presentation/home/homepage.dart';

final GoRouter appRouter = GoRouter(initialLocation: '/', routes: <RouteBase>[
  GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => const AuthGate()),
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
  GoRoute(
      path: '/home',
      builder: (BuildContext context, GoRouterState state) => const HomePage())
]);
