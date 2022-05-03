part of '_index.dart';

final x1SplashData = RM.inject<SplashData>(
  () => SplashData(),
  debugPrintWhenNotifiedPreMessage: 'SplashxData',
  sideEffects: SideEffects(initState: () => x1SplashCtrl.init()),
);

class SplashData {
  final title = 'Splash';

  final pathImage = 'assets/icons/splash.png';

  final rmLoading = 'loading...'.inj();
}
