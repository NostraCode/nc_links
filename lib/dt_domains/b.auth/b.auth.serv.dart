part of '_index.dart';

final x1AuthServ = AuthServ();

class AuthServ {
  AuthData get dt => x1AuthData.st;

  init() {
    logxx.i(AuthServ, '...');
    dt.rxUser.subscription = x1FbAuth.st.instance
        .authStateChanges()
        .listen((event) => dt.rxUser.st = event);
  }

  close() {
    dt.rxUser.subscription?.cancel();
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
