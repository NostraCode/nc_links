part of '_index.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  SplashCtrl get ct => Ctrl.splash;
  SplashData get dt => Data.splash.st;

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Scaffold(
        // appBar: const PreferredSize(
        //   preferredSize: Size.fromHeight(56),
        //   child: SplashxAppbar(),
        // ),
        // floatingActionButton: const SplashxFab(),
        backgroundColor: themeRM.isDarkTheme ? ConsColor.backgroundDark : ConsColor.backgroundLight,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SplashLogo(),
              SizedBoxH(10),
              SplashText(),
            ],
          ),
        ),
      ),
    );
  }
}
