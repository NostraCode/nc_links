part of '_index.dart';

class OnNavigate {
  OnNavigate._();

  static action(RouteData route) {
    final toLocation = route.location;
    final user = Prov.auth.st.rxUserApp.st;

    if (toLocation == Routes.authSwitch) {
      var newRoute = Routes.login;
      if (user != null) {
        final emailVerified = user.emailVerified;
        final phoneNotNull = user.phoneNumber != null;
        newRoute = emailVerified || phoneNotNull ? Routes.home : Routes.fbAuth;
      }
      logxx.wtf(OnNavigate, 'redirect page');
      return route.redirectTo(newRoute);

      // return route.redirectTo(Routes.todoList);
    }
  }
}
