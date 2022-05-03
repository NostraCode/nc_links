part of '_index.dart';

class OnNavigate {
  OnNavigate._();

  static action(RouteData data) {
    if (data.location == Routes.needLogin && x1XauthData.st.rmUser.st == null) {
      return data.redirectTo(Routes.login);
    }
    if (data.location == Routes.adminOnly &&
        x1XauthData.st.rmUser.st?.email != 'tontonanrakyat@gmail.com') {
      return data.redirectTo(Routes.login);
    }
    return null;
  }
}
