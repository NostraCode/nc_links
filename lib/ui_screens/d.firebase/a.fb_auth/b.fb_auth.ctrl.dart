part of '_index.dart';

final x1FbAuthCtrl = FbAuthCtrl();

class FbAuthCtrl {
  FbAuthData get dt => x1FbAuthData.st;

  init() => loggerx(FbAuthCtrl).v('init...');

  signInWithGoogle() => x1AuthServ.signInWithGoogle();

  signOut() => x1AuthServ.signOut();
}
