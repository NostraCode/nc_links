part of '_index.dart';

class AuthServ {
  AuthProv get pv => Prov.auth.st;

  init() {
    logxx.i(AuthServ, '...');
    pv.rxUserApp.initializeState();
  }

  initUserStream() => pv.rxUserStream.initializeState();

  authReload() => pv.rxUserStream.st?.reload();

  addEventCounter() => pv.rxEventCounter.setState((s) => s + 1);

  updateUserApp(User? userStream) {
    if (userStream == null) {
      pv.rxUserApp.st = null;
    } else {
      final old = pv.rxUserApp.st;
      final neo = UserApp(
        uid: userStream.uid,
        displayName: userStream.displayName,
        email: userStream.email,
        photoURL: userStream.photoURL,
        emailVerified: userStream.emailVerified,
      );
      if (old == null || old.emailVerified != neo.emailVerified) {
        pv.rxUserApp.st = neo;
      }
    }
  }

  void switchPage() async {
    final location = nav.routeData.location;
    final isInitRoute = (location == Routes.splash) || (location == '/');
    if (!isInitRoute) {
      nav.toAndRemoveUntil(Routes.authSwitch);
    } else {
      logxx.wtf(AuthServ, 'set timer');
      pv.timer?.cancel();
      pv.timer = Timer(3.seconds, () => nav.toAndRemoveUntil(Routes.authSwitch));
    }
  }

  //! ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- -----

  Future<void> createUserWithEmailAndPassword(String email, String password) async {
    try {
      pv.rxEventCounter.refresh();
      pv.rxUserStream.refresh();
      await x1FbAuth.st.createUserWithEmailAndPassword(email, password);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    try {
      pv.rxEventCounter.refresh();
      pv.rxUserStream.refresh();
      await x1FbAuth.st.signInWithEmailAndPassword(email, password);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> signInWithGoogle() async {
    try {
      pv.rxEventCounter.refresh();
      await x1FbAuth.st.signInWithGoogle();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> signOut() async {
    try {
      pv.rxEventCounter.refresh();
      await x1FbAuth.st.signOut();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> sendPasswordResetEmail(String email) async {
    try {
      await x1FbAuth.st.instance.sendPasswordResetEmail(email: email);
    } catch (e) {
      rethrow;
    }
  }
}
