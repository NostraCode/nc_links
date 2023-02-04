part of '_index.dart';

class PopupCtrl {
  PopupData get dt => Data.popup.st;

  init() => logxx.i(PopupCtrl, '...');

  action() {}

  increase() => dt.rxInt.st = dt.rxInt.st + 1;

  decrease() => dt.rxInt.st = dt.rxInt.st - 1;
}
