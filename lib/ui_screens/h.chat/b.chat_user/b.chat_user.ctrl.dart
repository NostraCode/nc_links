part of '_index.dart';

class ChatUserCtrl {
  init() => logxx.i(ChatUserCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);
}
