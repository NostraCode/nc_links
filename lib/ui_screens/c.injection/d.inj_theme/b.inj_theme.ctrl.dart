part of '_index.dart';

final x1InjThemeCtrl = InjThemeCtrl();

class InjThemeCtrl {
  InjThemeData get dt => x1InjThemeData.st;

  init() => loggerx(InjThemeCtrl).v('init...');

  action() => dt.rmInt.st = dt.rmInt.st + 1;
}
