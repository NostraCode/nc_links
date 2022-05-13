part of '_index.dart';

final x1DummyData = RM.inject<DummyData>(
  () => DummyData(),
  debugPrintWhenNotifiedPreMessage: 'XdummyData',
);

class DummyData {
  late ReactiveModel<StreamSubscription<int>> x;

  final rmSubsStatus = 'stop'.inj();

  final rmIntStream = RM.injectStream<int>(() => Stream.value(123));

  // ----- ----- ----- ----- -----

  var rmIntList = RM.inject<List<int>>(
    () => [],
  );

  final rmIntFuture = RM.injectFuture<int>(
    () => Future.value(123),
    sideEffects: SideEffects(
      initState: () => x1DummyServ.init(),
      onSetState: (snap) {
        if (snap.hasData) {
          x1DummyServ.addToList();
        }
      },
    ),
  );
}
