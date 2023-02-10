part of '../_index.dart';

class SplashLogo extends StatelessWidget {
  const SplashLogo({Key? key}) : super(key: key);

  SplashCtrl get ct => Ctrl.splash;
  SplashData get dt => Data.splash.st;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: Image.asset(dt.pathImage),
    );
  }
}
