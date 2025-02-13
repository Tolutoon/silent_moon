import 'package:silent_moon/import.dart';

void main() async {
  await Supabase.initialize(
      url: 'https://mvtumucgspqkssfixluy.supabase.co',
      anonKey:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im12dHVtdWNnc3Bxa3NzZml4bHV5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mzk0NjA0NDgsImV4cCI6MjA1NTAzNjQ0OH0.jWHNnn0TrGcVKmOEQzXn52zYl6iuJJH6_nndIChQLVw');
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
