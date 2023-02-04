part of '_index.dart';

class FbAuthCtrl {
  FbAuthData get dt => Data.fbAuth.st;

  init() => logxx.i(FbAuthCtrl, '...');

  signInWithGoogle() => Serv.auth.signInWithGoogle();

  signOut() => Serv.auth.signOut();
}
