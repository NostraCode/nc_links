part of '_index.dart';

final x1CobaSatuCtrl = CobaSatuCtrl();

class CobaSatuCtrl {
  CobaSatuData get dt => x1CobaSatuData.st;

  init() => loggerx(CobaSatuCtrl).v('init...');

  action() => dt.rmInt.setState((s) => s + 1);
}
