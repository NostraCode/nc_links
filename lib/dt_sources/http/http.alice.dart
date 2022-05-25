part of '_index.dart';

// final aliceNavigatorKey = GlobalKey<NavigatorState>();
// x1HttpAlice.setNavigatorKey(navigatorKey);

final x1HttpAlice = Alice(
  navigatorKey: RM.navigate.navigatorKey,
  // navigatorKey: aliceNavigatorKey,
  // navigatorKey: nav.routerDelegate.navigatorKey,
  showNotification: true,
  darkTheme: true,
);
