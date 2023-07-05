part of '_index.dart';

class ChatLoginCtrl {
  init() => logxx.i(ChatLoginCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  signInWithGoogle() => Serv.auth.signInWithGoogle();

  signOut() => Serv.auth.signOut();
}
