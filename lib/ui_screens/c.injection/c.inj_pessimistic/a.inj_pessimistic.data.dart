part of '_index.dart';

class InjPessimisticData {
  final rxTitle = 'Inj Pessimistic'.inj();

  final rxInt = RM.injectFuture<int?>(
    () => Future.value(0),
    sideEffects: SideEffects(
      initState: () => Ctrl.injPessimistic.action(),
      onSetState: (snap) {
        snap.onAll(
          onIdle: () => logx.s('from snap rxInt: onIdle...'),
          onData: (data) => logx.s('from snap rxInt: onData... $data'),
          onWaiting: () => logx.s('from snap rxInt: onWaiting...'),
          onError: (err, fun) => logx.s('from snap rxInt: onError...'),
        );
      },
    ),
  );
}
