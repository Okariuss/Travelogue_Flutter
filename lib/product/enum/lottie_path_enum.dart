import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

enum LottiePathEnum { PLANE, BUS }

extension LottiePathEnumExtension on LottiePathEnum {
  String get rawValue {
    switch (this) {
      case LottiePathEnum.PLANE:
        return _pathValue('plane');
      case LottiePathEnum.BUS:
        return _pathValue('travel_bus');
    }
  }

  Widget get toWidget {
    return Lottie.asset(rawValue);
  }

  String _pathValue(String path) => 'assets/animations/anim_$path.json';
}
