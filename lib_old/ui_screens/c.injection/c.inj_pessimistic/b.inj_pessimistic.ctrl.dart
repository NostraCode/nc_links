part of '_index.dart';

class InjPessimisticCtrl {
  InjPessimisticData get dt => Data.injPessimistic.st;

  init() => logxx.i(InjPessimisticCtrl, '...');

  action() {
    dt.rxInt.stateAsync = dt.rxInt.setState((s) => actionTry());
  }

  Future<dynamic> actionTry() async {
    try {
      final initInt = await actionRethrow();
      dt.rxInt.setToHasData(initInt);
    } catch (e) {
      dt.rxInt.setToHasError(e);
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
