part of '_index.dart';

final x1AuthServ = AuthServ();

class AuthServ {
  AuthProv get pv => x1AuthProv.st;

  init() {
    logxx.i(AuthServ, '...');
    pv.rxUser.subscription = x1FbAuth.st.instance.authStateChanges().listen((event) => pv.rxUser.st = event);
  }

  close() {
    pv.rxUser.subscription?.cancel();
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
