part of '_index.dart';

final x1CobaDuaCtrl = CobaDuaCtrl();

class CobaDuaCtrl {
  CobaDuaData get dt => x1CobaDuaData.st;

  init() => loggerx(CobaDuaCtrl).v('init...');

  action() => dt.rmInt.setState((s) => s + 1);
}
