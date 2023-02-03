part of '_index.dart';

final x1InjStateData = RM.inject<InjStateData>(
  () => InjStateData(),
  debugPrintWhenNotifiedPreMessage: '',
  sideEffects: SideEffects(initState: () => x1InjStateCtrl.init()),
);

class InjStateData {
  final title = 'RM State';

  final rxTab = RM.injectTabPageView(
    length: 3,
    initialIndex: 0,
  );

  //mutable
  int int0 = 0;

  //immutable
  final rxInt1 = 0.inj();
  final rxInt2 = RM.inject<int>(() => 0);

  // ----- ----- ----- ----- -----

  final rxSubsStatus = x1DummyProv.st.rxSubsStatus;

  final rxIntStream = x1DummyProv.st.rxIntStream;

  var rxIntList = x1DummyProv.st.rxIntList;

  final rxIntFuture = x1DummyProv.st.rxIntFuture;
}
