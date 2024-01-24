import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:travelogue_flutter/core/init/cache/local_manager.dart';

@immutable
class ApplicationStart {
  const ApplicationStart._();

  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
    await AppCache.instance.setup();
  }
}
