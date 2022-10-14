part of '_index.dart';

final x1InjThemeCtrl = InjThemeCtrl();

class InjThemeCtrl {
  InjThemeData get dt => x1InjThemeData.st;

  init() => logxx.i(InjThemeCtrl, '...');

  action() => dt.rxInt.st = dt.rxInt.st + 1;
}
