part of '_index.dart';

class NeedLoginCtrl {
  init() => logxx.i(NeedLoginCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);
}
