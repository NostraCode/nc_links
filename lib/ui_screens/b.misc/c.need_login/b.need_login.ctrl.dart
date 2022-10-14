part of '_index.dart';

final x1NeedLoginCtrl = NeedLoginCtrl();

class NeedLoginCtrl {
  NeedLoginData get dt => x1NeedLoginData.st;

  init() => logxx.i(NeedLoginCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);
}
