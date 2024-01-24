import 'package:travelogue_flutter/core/init/cache/local_manager.dart';

enum CacheItems {
  token,
  isFirst,
  isLogin;

  String get readString =>
      AppCache.instance.sharedPreferences.getString(name) ?? '';
  Future<bool> writeString(String value) =>
      AppCache.instance.sharedPreferences.setString(name, value);

  bool get readBool {
    if (name == 'isFirst') {
      return AppCache.instance.sharedPreferences.getBool(name) ?? true;
    } else {
      return AppCache.instance.sharedPreferences.getBool(name) ?? false;
    }
  }

  Future<bool> writeBool(bool value) =>
      AppCache.instance.sharedPreferences.setBool(name, value);
}
