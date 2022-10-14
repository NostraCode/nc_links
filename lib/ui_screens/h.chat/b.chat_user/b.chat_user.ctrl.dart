part of '_index.dart';

final x1ChatUserCtrl = ChatUserCtrl();

class ChatUserCtrl {
  ChatUserData get dt => x1ChatUserData.st;

  init() => logxx.i(ChatUserCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);
}
