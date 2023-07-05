part of '../_index.dart';

class SplashText extends StatelessWidget {
  const SplashText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      _dt.rxLoading.st,
      style: TextStyle(
        color: themeRM.isDarkTheme ? ConsColor.textLight : ConsColor.textDark,
      ),
    );
  }
}
