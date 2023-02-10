part of '_index.dart';

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

  final rxSubsStatus = Prov.dummy.st.rxSubsStatus;

  final rxIntStream = Prov.dummy.st.rxIntStream;

  var rxIntList = Prov.dummy.st.rxIntList;

  final rxIntFuture = Prov.dummy.st.rxIntFuture;
}
