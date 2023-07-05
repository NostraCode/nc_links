part of '_index.dart';

class PopupCtrl {
  init() => logxx.i(PopupCtrl, '...');

  action() {}

  increase() => _dt.rxInt.st = _dt.rxInt.st + 1;

  decrease() => _dt.rxInt.st = _dt.rxInt.st - 1;
}
