part of '_index.dart';

final x1InjStateData = RM.inject<InjStateData>(
  () => InjStateData(),
  sideEffects: SideEffects(initState: () => x1InjStateCtrl.init()),
  debugPrintWhenNotifiedPreMessage: 'InjStateData',
);

class InjStateData {
  final title = 'RM State';

  final rmTab = RM.injectTabPageView(
    length: 3,
    initialIndex: 0,
  );

  //mutable
  int int0 = 0;

  //immutable
  final rmInt1 = 0.inj();
  final rmInt2 = RM.inject<int>(() => 0);

  // ----- ----- ----- ----- -----

  final rmSubsStatus = x1XdummyData.st.rmSubsStatus;

  final rmIntStream = x1XdummyData.st.rmIntStream;

  var rmIntList = x1XdummyData.st.rmIntList;

  final rmIntFuture = x1XdummyData.st.rmIntFuture;
}
