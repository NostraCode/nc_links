part of '_index.dart';

final x1InjPessimisticData = RM.inject<InjPessimisticData>(
  () => InjPessimisticData(),
  debugPrintWhenNotifiedPreMessage: '',
  sideEffects: SideEffects(initState: () => x1InjPessimisticCtrl.init()),
);

class InjPessimisticData {
  final rxTitle = 'Inj Pessimistic'.inj();

  final rxInt = RM.injectFuture<int?>(
    () => Future.value(0),
    sideEffects: SideEffects(
      initState: () => x1InjPessimisticCtrl.action(),
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
