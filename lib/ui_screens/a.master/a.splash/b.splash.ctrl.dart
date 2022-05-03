part of '_index.dart';

final x1SplashCtrl = SplashCtrl();

class SplashCtrl {
  SplashData get dt => x1SplashData.st;

  init() {
    loggerx(SplashCtrl).v('init...');
    delayedNavigation();
  }

  delayedNavigation() async {
    await Future.delayed(3.seconds);
    nav.toReplacement(Routes.home);
  }
}
