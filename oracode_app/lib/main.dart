import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

// Models
import 'models/user_data.dart';
import 'models/achievement.dart';

// Screens & Theme
import 'screens/home_screen.dart';
import 'theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Hive
  await Hive.initFlutter();

  // Register adapters BEFORE opening boxes
  Hive.registerAdapter(UserDataAdapter());
  Hive.registerAdapter(AchievementAdapter());

  // Open boxes
  await Hive.openBox('user_data');
  await Hive.openBox('achievements');
  await Hive.openBox('settings');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ethical Systems Game',
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/game': (context) => const Placeholder(), // TODO: Replace later
        '/sandbox': (context) => const Placeholder(), // TODO: Replace later
      },
    );
  }
}
