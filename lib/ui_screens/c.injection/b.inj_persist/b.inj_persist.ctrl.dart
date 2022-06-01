part of '_index.dart';

final x1InjPersistCtrl = InjPersistCtrl();

class InjPersistCtrl {
  InjPersistData get dt => x1InjPersistData.st;

  init() => logxx.i(InjPersistCtrl, '...');

  action() {
    dt.rxInt.setState((s) => s + 1);
    dt.rxIntPersist.setState((s) => s + 2);
    dt.rxProductPersist.setState((s) => Productx.random());
  }
}
