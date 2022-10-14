part of '_index.dart';

final x1SplashData = RM.inject<SplashData>(
  () => SplashData(),
  debugPrintWhenNotifiedPreMessage: '',
  sideEffects: SideEffects(initState: () => x1SplashCtrl.init()),
);

class SplashData {
  final title = 'Splash';

  final pathImage = 'assets/icons/splash.png';

  final rxLoading = 'loading...'.inj();
}
