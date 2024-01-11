import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelogue_flutter/core/constants/app_colors.dart';
import 'package:travelogue_flutter/core/constants/string_constants.dart';
import 'package:travelogue_flutter/product/enum/font_size.dart';
import 'package:travelogue_flutter/product/enum/image_path_enum.dart';
import 'package:travelogue_flutter/product/enum/image_size.dart';
import 'package:travelogue_flutter/product/enum/lottie_path_enum.dart';

class CustomSplashPage extends StatelessWidget {
  const CustomSplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorConstants.appBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _TopSplashItems(),
            _CenterSplashItems(),
            _BottomSplashItems(),
          ],
        ),
      ),
    );
  }
}

class _CenterSplashItems extends StatelessWidget {
  const _CenterSplashItems();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          StringConstants.appName,
          style: GoogleFonts.bilboSwashCaps(
            fontSize: FontSize.extraLarge.value.toDouble(),
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          StringConstants.splashText,
          style: GoogleFonts.aldrich(
            fontSize: FontSize.normal.value.toDouble(),
          ),
        ),
      ],
    );
  }
}

class _BottomSplashItems extends StatelessWidget {
  const _BottomSplashItems();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ImageSize.normal.value.toDouble(),
      child: LottiePathEnum.BUS.toWidget,
    );
  }
}

class _TopSplashItems extends StatelessWidget {
  const _TopSplashItems();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LottiePathEnum.PLANE.toWidget,
        SizedBox(
          height: ImageSize.medium.value.toDouble(),
          child: ImagePathEnum.LOGO.toWidget,
        ),
      ],
    );
  }
}
