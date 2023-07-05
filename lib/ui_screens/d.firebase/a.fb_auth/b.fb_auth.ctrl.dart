part of '_index.dart';

class FbAuthCtrl {
  init() => logxx.i(FbAuthCtrl, '...');

  signInWithGoogle() => Serv.auth.signInWithGoogle();

  signOut() => Serv.auth.signOut();

  authReload() => Serv.auth.authReload();
}
