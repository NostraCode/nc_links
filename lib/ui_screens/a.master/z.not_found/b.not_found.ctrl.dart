part of '_index.dart';

class NotFoundCtrl {
  init() => logxx.i(NotFoundCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);
}
