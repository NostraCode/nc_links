part of '_index.dart';

final x1AuthServ = AuthServ();

class AuthServ {
  AuthData get dt => x1AuthData.st;

  init() {
    logxx.i(AuthServ, '...');
    dt.subsAuth = x1FbAuth.st.instance.userChanges().listen((event) {
      dt.rxUser.st = event;
      logxx.wtf(AuthServ, 'user => ${dt.rxUser.st}');
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
