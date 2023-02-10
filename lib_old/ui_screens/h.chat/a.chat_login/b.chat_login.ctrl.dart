part of '_index.dart';

class ChatLoginCtrl {
  ChatLoginData get dt => Data.chatLogin.st;

  init() => logxx.i(ChatLoginCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);

  signInWithGoogle() => Serv.auth.signInWithGoogle();

  signOut() => Serv.auth.signOut();
}
