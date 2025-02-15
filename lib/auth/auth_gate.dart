import 'package:silent_moon/import.dart';
import 'package:silent_moon/presentation/get_started/get_started.dart';
import 'package:silent_moon/presentation/home/home_page.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<AuthState>(
        stream: Supabase.instance.client.auth.onAuthStateChange,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }

          final session = snapshot.data?.session;

          if (session != null) {
            return const HomePage();
          } else {
            return const SignInSignUpScreen();
          }
        });
  }
}
