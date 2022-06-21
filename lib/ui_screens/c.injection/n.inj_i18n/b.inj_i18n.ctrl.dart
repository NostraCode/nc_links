part of '_index.dart';

final x1InjI18nCtrl = InjI18nCtrl();

class InjI18nCtrl {
  InjI18nData get dt => x1InjI18nData.st;

  init() => logxx.i(InjI18nCtrl, '...');

  action() => dt.rxInt.st = dt.rxInt.st + 1;
}
