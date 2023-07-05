part of '_index.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

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
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
