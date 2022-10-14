part of '_index.dart';

final x1OnlyAdminCtrl = OnlyAdminCtrl();

class OnlyAdminCtrl {
  OnlyAdminData get dt => x1OnlyAdminData.st;

  init() => logxx.i(OnlyAdminCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);
}
