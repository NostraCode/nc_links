part of '_index.dart';

final nav = RM.injectNavigator(
  initialLocation: Routes.cobaSatu,
  routes: RouteMap.data,
  onNavigate: (data) => OnNavigate.action(data),
  onNavigateBack: (data) => OnNavigateBack.action(data),
);
