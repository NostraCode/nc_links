part of '_index.dart';

final x1OverlayWidgetsCtrl = OverlayWidgetsCtrl();

class OverlayWidgetsCtrl {
  OverlayWidgetsData get dt => x1OverlayWidgetsData.st;

  init() => logxx.i(OverlayWidgetsCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);
}
