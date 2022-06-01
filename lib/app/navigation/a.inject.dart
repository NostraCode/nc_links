part of '_index.dart';

final nav = RM.injectNavigator(
  initialLocation: Routes.home,
  routes: RouteMap.data,
  onNavigate: (data) => OnNavigate.action(data),
  onNavigateBack: (data) => OnNavigateBack.action(data),
  builder: (routerOutlet) => routerOutlet,
  // pageBuilder: (MaterialPageArgument arg) {
  //   return MaterialPage(
  //     key: arg.key,
  //     child: arg.child,
  //     maintainState: true,
  //     name: arg.name,
  //   );
  // },
  // debugPrintWhenRouted: true,
)..routerDelegate.addListener(RouteListeners.analytics);
