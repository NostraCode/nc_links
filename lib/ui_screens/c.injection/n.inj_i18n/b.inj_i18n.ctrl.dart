part of '_index.dart';

class InjI18nCtrl {
  InjI18nData get dt => Data.injI18n.st;

  init() => logxx.i(InjI18nCtrl, '...');

  action() => dt.rxInt.st = dt.rxInt.st + 1;
}
