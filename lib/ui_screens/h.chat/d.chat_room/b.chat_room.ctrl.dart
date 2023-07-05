part of '_index.dart';

class ChatRoomCtrl {
  init() => logxx.i(ChatRoomCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);
}
