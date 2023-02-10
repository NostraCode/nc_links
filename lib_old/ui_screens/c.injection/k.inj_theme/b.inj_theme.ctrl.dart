part of '_index.dart';

class InjThemeCtrl {
  InjThemeData get dt => Data.injTheme.st;

  init() => logxx.i(InjThemeCtrl, '...');

  action() => dt.rxInt.st = dt.rxInt.st + 1;
}
