part of '_index.dart';

class ChatFriendCtrl {
  init() => logxx.i(ChatFriendCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);
}
