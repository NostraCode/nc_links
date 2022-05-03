part of '_index.dart';

final x1NeedLoginCtrl = NeedLoginCtrl();

class NeedLoginCtrl {
  NeedLoginData get dt => x1NeedLoginData.st;

  init() => loggerx(NeedLoginCtrl).v('init...');

  action() => dt.rmInt.setState((s) => s + 1);
}
