part of '_index.dart';

class OverlayWidgetsCtrl {
  OverlayWidgetsData get dt => Data.overlayWidget.st;

  init() => logxx.i(OverlayWidgetsCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);
}
