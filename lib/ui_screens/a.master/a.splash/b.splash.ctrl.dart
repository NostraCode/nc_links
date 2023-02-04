part of '_index.dart';

class SplashCtrl {
  SplashData get dt => Data.splash.st;

  init() {
    logxx.i(SplashCtrl, '...');
    delayedNavigation();
  }

  delayedNavigation() async {
    await Future.delayed(3.seconds);
    nav.toReplacement(Routes.home);
  }
}
