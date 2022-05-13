part of '_index.dart';

final nav = RM.injectNavigator(
  initialLocation: Routes.home,
  routes: RouteMap.data,
  onNavigate: (data) => OnNavigate.action(data),
  onNavigateBack: (data) => OnNavigateBack.action(data),
);
