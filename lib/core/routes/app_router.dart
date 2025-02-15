import 'package:silent_moon/auth/auth_gate.dart';
import 'package:silent_moon/import.dart';
import 'package:silent_moon/presentation/choose_mode/choose_mode.dart';
import 'package:silent_moon/presentation/get_started/get_started.dart';
import 'package:silent_moon/presentation/home/home_page.dart';

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
      path: '/home',
      builder: (BuildContext context, GoRouterState state) => const HomePage()),
  GoRoute(
      path: '/getStarted',
      builder: (BuildContext context, GoRouterState state) =>
          const GetStartedPage()),
  GoRoute(
      path: '/chooseMode',
      builder: (BuildContext context, GoRouterState state) =>
          const ChooseModePage()),
]);
