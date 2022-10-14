part of '_index.dart';

final x1InjAnimCtrl = InjAnimCtrl();

class InjAnimCtrl {
  InjAnimData get dt => x1InjAnimData.st;

  init() => logxx.i(InjAnimCtrl, '...');

  action() => dt.animation1.triggerAnimation();
}
