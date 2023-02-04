part of '_index.dart';

class OnlyAdminCtrl {
  OnlyAdminData get dt => Data.onlyAdmin.st;

  init() => logxx.i(OnlyAdminCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);
}
