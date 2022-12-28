part of '_index.dart';

final x1PopupCtrl = PopupCtrl();

class PopupCtrl {
  PopupData get dt => x1PopupData.st;

  init() => logxx.i(PopupCtrl, '...');

  action() {}

  increase() => dt.rxInt.st = dt.rxInt.st + 1;

  decrease() => dt.rxInt.st = dt.rxInt.st - 1;
}
