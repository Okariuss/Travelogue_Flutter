import 'package:flutter/material.dart';
import 'package:travelogue_flutter/core/theme/app_theme.dart';
import 'package:travelogue_flutter/feature/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme(context).theme,
      home: const SplashPage(),
    );
  }
}
