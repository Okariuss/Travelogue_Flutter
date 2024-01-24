import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelogue_flutter/core/constants/string_constants.dart';
import 'package:travelogue_flutter/core/init/localization/product_localization.dart';
import 'package:travelogue_flutter/core/init/start/application_start.dart';
import 'package:travelogue_flutter/core/init/theme/app_theme.dart';
import 'package:travelogue_flutter/feature/onboard/viewModel/onboard_page_view_model.dart';
import 'package:travelogue_flutter/feature/splash/view/splash_page.dart';

Future<void> main() async {
  await ApplicationStart.init();
  runApp(ProductLocalization(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => OnboardPageViewModel(),
        ),
      ],
      child: MaterialApp(
        title: StringConstants.appName,
        theme: AppTheme(context).theme,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        home: const SplashPage(),
      ),
    );
  }
}
