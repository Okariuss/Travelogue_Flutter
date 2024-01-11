import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:travelogue_flutter/feature/home/home_page.dart';
import 'package:travelogue_flutter/feature/splash/custom_splash_page.dart';

part 'mixin/splash_page_mixin.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with _SplashPageMixin {
  @override
  Widget build(BuildContext context) {
    return const CustomSplashPage();
  }
}
