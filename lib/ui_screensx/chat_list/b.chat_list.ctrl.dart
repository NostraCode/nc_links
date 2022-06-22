part of '_index.dart';

final x1ChatListCtrl = ChatListCtrl();

class ChatListCtrl {
  ChatListData get dt => x1ChatListData.st;

  init() => logxx.i(ChatListCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);
}
