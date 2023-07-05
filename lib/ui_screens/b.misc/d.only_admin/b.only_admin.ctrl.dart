part of '_index.dart';

class OnlyAdminCtrl {
  init() => logxx.i(OnlyAdminCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);
}
