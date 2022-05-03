part of '../_index.dart';

class SplashText extends StatelessWidget {
  const SplashText({Key? key}) : super(key: key);

  SplashCtrl get ct => x1SplashCtrl;
  SplashData get dt => x1SplashData.st;

  @override
  Widget build(BuildContext context) {
    return Text(
      dt.rmLoading.st,
      style: TextStyle(
        color: themeRM.isDarkTheme ? ConsColor.textLight : ConsColor.textDark,
      ),
    );
  }
}
