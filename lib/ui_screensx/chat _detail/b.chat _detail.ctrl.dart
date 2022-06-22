part of '_index.dart';

final x1ChatDetailCtrl = ChatDetailCtrl();

class ChatDetailCtrl {
  ChatDetailData get dt => x1ChatDetailData.st;

  init() => logxx.i(ChatDetailCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);
}
