part of '_index.dart';

final x1CobaTigaCtrl = CobaTigaCtrl();

class CobaTigaCtrl {
  CobaTigaData get dt => x1CobaTigaData.st;

  init() => logxx.i(CobaTigaCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);
}
