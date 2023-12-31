part of '_index.dart';

class InjPessimisticCtrl {
  init() => logxx.i(InjPessimisticCtrl, '...');

  action() {
    _dt.rxInt.stateAsync = _dt.rxInt.setState((s) => actionTry());
  }

  Future<dynamic> actionTry() async {
    try {
      final initInt = await actionRethrow();
      _dt.rxInt.setToHasData(initInt);
    } catch (e) {
      _dt.rxInt.setToHasError(e);
      return Fun.handleException(e);
    }
  }

  Future<dynamic> actionRethrow() async {
    try {
      final initInt = await actionFuture();
      return initInt;
    } catch (e) {
      rethrow;
    }
  }

  Future<int> actionFuture() async {
    await Future.delayed(const Duration(seconds: 2));
    final x = Random().nextInt(100);
    if (x > 50) {
      throw Exception();
    }
    return x;
  }
}
