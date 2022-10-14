part of '_index.dart';

final x1FbFirestoreData = RM.inject<FbFirestoreData>(
  () => FbFirestoreData(),
  debugPrintWhenNotifiedPreMessage: '',
  sideEffects: SideEffects(
    initState: () => x1FbFirestoreCtrl.init(),
  ),
);

class FbFirestoreData {
  final title = 'FbFirestore';

  final rxSelectedId = x1ProductData.st.rxSelectedId;

  final rxProductFuture = x1ProductData.st.rxProductFuture;

  final rxProductStream = x1ProductData.st.rxProductStream;
}
