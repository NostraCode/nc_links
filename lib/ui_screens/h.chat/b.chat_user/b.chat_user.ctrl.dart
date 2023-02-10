part of '_index.dart';

class ChatUserCtrl {
  ChatUserData get dt => Data.chatUser.st;

  init() => logxx.i(ChatUserCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);
}
