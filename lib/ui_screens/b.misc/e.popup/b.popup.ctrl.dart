part of '_index.dart';

final x1PopupCtrl = PopupCtrl();

class PopupCtrl {
  PopupData get dt => x1PopupData.st;

  init() => loggerx(PopupCtrl).v('init...');

  action() {}

  increase() => dt.rmInt.st = dt.rmInt.st + 1;

  decrease() => dt.rmInt.st = dt.rmInt.st - 1;

  showPersistentBottomSheet() => dt.rmShow.st = true;

  hidePersistentBottomSheet() => dt.rmShow.st = false;
}
