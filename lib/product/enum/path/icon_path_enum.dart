import 'package:flutter/material.dart';

enum IconPathEnum { LOGO }

extension IconPathEnumExtension on IconPathEnum {
  String get rawValue {
    switch (this) {
      case IconPathEnum.LOGO:
        return _pathValue('app');
    }
  }

  Widget get toWidget => Image.asset(rawValue);

  String _pathValue(String path) => 'assets/icons/ic_${path}_icon.png';
}
