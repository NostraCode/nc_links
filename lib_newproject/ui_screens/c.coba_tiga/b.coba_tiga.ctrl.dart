part of '_index.dart';

final x1CobaTigaCtrl = CobaTigaCtrl();

class CobaTigaCtrl {
  CobaTigaData get dt => x1CobaTigaData.st;

  init() => loggerx(CobaTigaCtrl).v('init...');

  action() => dt.rmInt.setState((s) => s + 1);
}
