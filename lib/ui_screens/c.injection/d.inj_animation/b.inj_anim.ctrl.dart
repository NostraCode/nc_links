part of '_index.dart';

class InjAnimCtrl {
  InjAnimData get dt => Data.injAnim.st;

  init() => logxx.i(InjAnimCtrl, '...');

  action() => dt.animation1.triggerAnimation();
}
