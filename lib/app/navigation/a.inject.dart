part of '_index.dart';

final nav = RM.injectNavigator(
  initialLocation: Routes.home,
  // initialLocation: Routes.chatList,
  routes: RouteMap.data,
  onNavigate: (data) => OnNavigate.action(data),
  onNavigateBack: (data) => OnNavigateBack.action(data),
  shouldUseCupertinoPage: true,
  // builder: (routerOutlet) => routerOutlet,
  // builder: (routerOutlet) => DevicePreview.appBuilder(
  //   context,
  //   routerOutlet,
  // ),
  navigatorObservers: [
    FirebaseAnalyticsObserver(analytics: x1FbAnalytics.st.instance),
  ],
);
