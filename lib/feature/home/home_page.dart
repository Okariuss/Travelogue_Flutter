import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:travelogue_flutter/product/init/language/locale_keys.g.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Text(LocaleKeys.splash_title).tr(),
        ],
      ),
    );
  }
}
