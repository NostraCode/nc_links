part of '_index.dart';

final nav = RM.injectNavigator(
  initialLocation: Routes.home,
  // initialLocation: Routes.chatList,
  routes: RouteMap.data,
  onNavigate: (data) => OnNavigate.action(data),
  onNavigateBack: (data) => OnNavigateBack.action(data),
  shouldUseCupertinoPage: true,
  debugPrintWhenRouted: true,
  navigatorObservers: PlatformType.isWindows || PlatformType.isLinux
      ? []
      : [FirebaseAnalyticsObserver(analytics: x1FbAnalytics.st.instance)],
  // builder: (routerOutlet) => routerOutlet,
  // builder: (routerOutlet) => DevicePreview.appBuilder(
  //   context,
  //   routerOutlet,
  // ),
);
