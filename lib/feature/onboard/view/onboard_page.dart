import 'package:flutter/material.dart';
import 'package:travelogue_flutter/core/constants/app_colors.dart';
import 'package:travelogue_flutter/feature/onboard/view/custom_onboard_page.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({super.key});

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorConstants.onboardBackgroundColor,
      body: CustomOnboardPage(),
    );
  }
}
