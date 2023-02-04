part of '_index.dart';

class NeedLoginCtrl {
  NeedLoginData get dt => Data.needLogin.st;

  init() => logxx.i(NeedLoginCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);
}
