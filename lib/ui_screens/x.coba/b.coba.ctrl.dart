part of '_index.dart';

class CobaCtrl {
  init() => logxx.i(CobaCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);
}
