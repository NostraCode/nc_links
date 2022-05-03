part of '_index.dart';

final x1XauthServ = XauthServ();

class XauthServ {
  XauthData get dt => x1XauthData.st;

  init() {
    loggerx(XauthServ).v('init...');
    dt.subsAuth = x1FbAuth.st.instance.userChanges().listen((event) {
      dt.rmUser.st = event;
      loggerx(XauthServ).v('user => ${dt.rmUser.st}');
    });
  }

  close() {
    dt.subsAuth.cancel();
  }

  signInWithEmailAndPassword(String email, String password) {
    x1FbAuth.st.signInWithEmailAndPassword(email, password);
  }

  signInWithGoogle() {
    x1FbAuth.st.signInWithGoogle();
  }

  signOut() {
    x1FbAuth.st.signOut();
  }
}
