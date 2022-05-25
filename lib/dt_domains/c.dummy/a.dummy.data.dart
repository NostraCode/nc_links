part of '_index.dart';

final x1DummyData = RM.inject<DummyData>(
  () => DummyData(),
  debugPrintWhenNotifiedPreMessage: '',
);

class DummyData {
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
      initState: () => x1DummyServ.init(),
      onSetState: (snap) {
        if (snap.hasData) {
          x1DummyServ.addToList();
        }
      },
    ),
  );
}
