part of '_index.dart';

final x1XdummyData = RM.inject<XdummyData>(
  () => XdummyData(),
  debugPrintWhenNotifiedPreMessage: 'XdummyData',
);

class XdummyData {
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
      initState: () => x1XdummyServ.init(),
      onSetState: (snap) {
        if (snap.hasData) {
          x1XdummyServ.addToList();
        }
      },
    ),
  );
}
