import 'package:silent_moon/import.dart';

class AuthService {
  final SupabaseClient _supabase = Supabase.instance.client;

  //sigin with email and password
  Future<AuthResponse> signInWithEmailAndPassword(
      String email, String password) async {
    return await _supabase.auth.signUp(password: password, email: email);
  }

  //signup with email and password
  Future<AuthResponse> signUpWithEmailAndPassword(
      String email, String password) async {
    return await _supabase.auth.signUp(password: password, email: email);
  }
}
