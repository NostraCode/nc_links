part of '_index.dart';

class ChatRoomCtrl {
  ChatRoomData get dt => Data.chatRoom.st;

  init() => logxx.i(ChatRoomCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);
}
