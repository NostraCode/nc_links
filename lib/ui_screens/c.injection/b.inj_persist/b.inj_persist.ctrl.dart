part of '_index.dart';

class InjPersistCtrl {
  init() => logxx.i(InjPersistCtrl, '...');

  action() {
    _dt.rxInt.setState((s) => s + 1);
    _dt.rxIntPersist.setState((s) => s + 2);
    _dt.rxProductPersist.setState((s) => Product.random());
  }
}
