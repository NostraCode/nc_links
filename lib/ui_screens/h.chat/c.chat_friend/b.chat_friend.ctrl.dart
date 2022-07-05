part of '_index.dart';

final x1ChatFriendCtrl = ChatFriendCtrl();

class ChatFriendCtrl {
  ChatFriendData get dt => x1ChatFriendData.st;

  init() => logxx.i(ChatFriendCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);
}
