part of '_index.dart';

final x1CobaDuaCtrl = CobaDuaCtrl();

class CobaDuaCtrl {
  CobaDuaData get dt => x1CobaDuaData.st;

  init() => logxx.i(CobaDuaCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);
}
