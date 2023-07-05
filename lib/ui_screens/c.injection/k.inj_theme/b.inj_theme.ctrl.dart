part of '_index.dart';

class InjThemeCtrl {
  init() => logxx.i(InjThemeCtrl, '...');

  action() => _dt.rxInt.st = _dt.rxInt.st + 1;
}
