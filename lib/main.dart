import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:silent_moon/import.dart';

String supabaseKey = dotenv.env['anonKey']!;
String supabaseUrl = dotenv.env['supaBaseUrl']!;

void main() async {
  await dotenv.load(fileName: '.env');
  await Supabase.initialize(url: supabaseUrl, anonKey: supabaseKey);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      routerConfig: appRouter,
    );
  }
}
