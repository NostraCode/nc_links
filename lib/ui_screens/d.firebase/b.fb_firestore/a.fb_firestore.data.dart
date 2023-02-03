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

  final rxSelectedId = x1ProductProv.st.rxSelectedId;

  final rxProductFuture = x1ProductProv.st.rxProductFuture;

  final rxProductStream = x1ProductProv.st.rxProductStream;
}
