part of '_index.dart';

class OverlayWidgetsCtrl {
  init() => logxx.i(OverlayWidgetsCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);
}
