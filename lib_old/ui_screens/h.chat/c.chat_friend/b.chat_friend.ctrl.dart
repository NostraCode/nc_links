part of '_index.dart';

class ChatFriendCtrl {
  ChatFriendData get dt => Data.chatFriend.st;

  init() => logxx.i(ChatFriendCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);
}
