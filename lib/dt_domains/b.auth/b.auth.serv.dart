part of '_index.dart';

final x1AuthServ = AuthServ();

class AuthServ {
  AuthData get dt => x1AuthData.st;

  init() {
    loggerx(AuthServ).v('init...');
    dt.subsAuth = x1FbAuth.st.instance.userChanges().listen((event) {
      dt.rmUser.st = event;
      loggerx(AuthServ).v('user => ${dt.rmUser.st}');
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
