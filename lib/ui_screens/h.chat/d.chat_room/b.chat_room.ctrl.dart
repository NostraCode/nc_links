part of '_index.dart';

final x1ChatRoomCtrl = ChatRoomCtrl();

class ChatRoomCtrl {
  ChatRoomData get dt => x1ChatRoomData.st;

  init() => logxx.i(ChatRoomCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);
}
