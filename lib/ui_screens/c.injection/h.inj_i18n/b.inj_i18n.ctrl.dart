part of '_index.dart';

final x1InjI18nCtrl = InjI18nCtrl();

class InjI18nCtrl {
  InjI18nData get dt => x1InjI18nData.st;

  init() => loggerx(InjI18nCtrl).v('init...');

  action() => dt.rmInt.st = dt.rmInt.st + 1;
}
