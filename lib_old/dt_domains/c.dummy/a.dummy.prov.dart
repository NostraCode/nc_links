part of '_index.dart';

class DummyProv {
  late ReactiveModel<StreamSubscription<int>> x;

  final rxSubsStatus = 'stop'.inj();

  final rxIntStream = RM.injectStream<int>(() => Stream.value(123));

  // ----- ----- ----- ----- -----

  var rxIntList = RM.inject<List<int>>(
    () => [],
  );

  final rxIntFuture = RM.injectFuture<int>(
    () => Future.value(123),
    sideEffects: SideEffects(
      initState: () => Serv.dummy.init(),
      onSetState: (snap) {
        if (snap.hasData) {
          Serv.dummy.addToList();
        }
      },
    ),
  );
}
