part of '_index.dart';

final x1ChatLoginCtrl = ChatLoginCtrl();

class ChatLoginCtrl {
  ChatLoginData get dt => x1ChatLoginData.st;

  init() => logxx.i(ChatLoginCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);

  signInWithGoogle() => x1AuthServ.signInWithGoogle();

  signOut() => x1AuthServ.signOut();
}
