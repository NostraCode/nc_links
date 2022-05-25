part of '_index.dart';

class App extends TopStatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OverlaySupport(
      child: MaterialApp.router(
        title: config.st.appName,
        debugShowCheckedModeBanner: false,
        // ----- ----- ----- ----- -----
        theme: themeRM.lightTheme,
        darkTheme: themeRM.darkTheme,
        themeMode: themeRM.themeMode,
        // ----- ----- ----- ----- -----
        locale: i18nRM.locale,
        localeResolutionCallback: i18nRM.localeResolutionCallback,
        localizationsDelegates: i18nRM.localizationsDelegates,
        // ----- ----- ----- ----- -----
        routeInformationParser: nav.routeInformationParser,
        routerDelegate: nav.routerDelegate,
      ),
    );
  }
}
