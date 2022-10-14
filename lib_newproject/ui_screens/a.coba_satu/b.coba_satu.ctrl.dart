part of '_index.dart';

final x1CobaSatuCtrl = CobaSatuCtrl();

class CobaSatuCtrl {
  CobaSatuData get dt => x1CobaSatuData.st;

  init() => logxx.i(CobaSatuCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);
}
