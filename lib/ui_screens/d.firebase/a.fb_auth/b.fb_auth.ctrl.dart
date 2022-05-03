part of '_index.dart';

final x1FbAuthCtrl = FbAuthCtrl();

class FbAuthCtrl {
  FbAuthData get dt => x1FbAuthData.st;

  init() => loggerx(FbAuthCtrl).v('init...');

  signInWithGoogle() => x1XauthServ.signInWithGoogle();

  signOut() => x1XauthServ.signOut();
}
