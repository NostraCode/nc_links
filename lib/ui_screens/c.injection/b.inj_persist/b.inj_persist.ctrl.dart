part of '_index.dart';

class InjPersistCtrl {
  InjPersistData get dt => Data.injPersist.st;

  init() => logxx.i(InjPersistCtrl, '...');

  action() {
    dt.rxInt.setState((s) => s + 1);
    dt.rxIntPersist.setState((s) => s + 2);
    dt.rxProductPersist.setState((s) => Product.random());
  }
}
