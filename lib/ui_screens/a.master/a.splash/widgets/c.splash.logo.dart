part of '../_index.dart';

class SplashLogo extends StatelessWidget {
  const SplashLogo({Key? key}) : super(key: key);

  SplashCtrl get ct => x1SplashCtrl;
  SplashData get dt => x1SplashData.st;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: Image.asset(dt.pathImage),
    );
  }
}
