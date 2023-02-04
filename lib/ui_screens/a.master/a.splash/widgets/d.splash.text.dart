part of '../_index.dart';

class SplashText extends StatelessWidget {
  const SplashText({Key? key}) : super(key: key);

  SplashCtrl get ct => Ctrl.splash;
  SplashData get dt => Data.splash.st;

  @override
  Widget build(BuildContext context) {
    return Text(
      dt.rxLoading.st,
      style: TextStyle(
        color: themeRM.isDarkTheme ? ConsColor.textLight : ConsColor.textDark,
      ),
    );
  }
}
