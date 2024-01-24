import 'package:flutter/material.dart';

enum ImagePathEnum { HOTEL, NEED_HELP, TRAVEL }

enum PageNameEnum { BOARDING, HOME }

extension ImagePathEnumExtension on ImagePathEnum {
  String get rawValue {
    switch (this) {
      case ImagePathEnum.HOTEL:
        return _pathValue('hotel', PageNameEnum.BOARDING.rawValue);
      case ImagePathEnum.NEED_HELP:
        return _pathValue('need_help', PageNameEnum.BOARDING.rawValue);
      case ImagePathEnum.TRAVEL:
        return _pathValue('travel', PageNameEnum.BOARDING.rawValue);
    }
  }

  Widget get toWidget => Image.asset(rawValue);

  String _pathValue(String path, String pageName) =>
      'assets/images/img_${path}_$pageName.png';
}

extension PageNameEnumExtension on PageNameEnum {
  String get rawValue {
    switch (this) {
      case PageNameEnum.BOARDING:
        return 'boarding';
      case PageNameEnum.HOME:
        return 'home';
    }
  }
}
