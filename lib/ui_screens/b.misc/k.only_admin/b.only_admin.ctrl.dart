part of '_index.dart';

final x1OnlyAdminCtrl = OnlyAdminCtrl();

class OnlyAdminCtrl {
  OnlyAdminData get dt => x1OnlyAdminData.st;

  init() => loggerx(OnlyAdminCtrl).v('init...');

  action() => dt.rmInt.setState((s) => s + 1);
}
