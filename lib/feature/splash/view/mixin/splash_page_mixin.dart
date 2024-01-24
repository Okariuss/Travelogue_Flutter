part of '../splash_page.dart';

mixin _SplashPageMixin on State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  void _navigateToNextScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return CacheItems.isFirst.readBool
                ? const OnboardPage()
                : (CacheItems.isLogin.readBool
                    ? const HomePage()
                    : const LoginPage());
          },
        ),
      );
    });
  }
}
