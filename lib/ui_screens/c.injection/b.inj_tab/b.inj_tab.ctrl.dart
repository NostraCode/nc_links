part of '_index.dart';

final x1InjTabCtrl = InjTabCtrl();

class InjTabCtrl {
  InjTabData get dt => x1InjTabData.st;

  init() => loggerx(InjTabCtrl).v('init...');

  action() {}
}
