import 'package:flutter/material.dart';

enum ImagePathEnum { LOGO }

extension ImagePathEnumExtension on ImagePathEnum {
  String get rawValue {
    switch (this) {
      case ImagePathEnum.LOGO:
        return _pathValue('app_icon');
    }
  }

  Widget get toWidget {
    return Image.asset(rawValue);
  }

  String _pathValue(String path) => 'assets/icons/ic_$path.png';
}
