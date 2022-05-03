part of '_index.dart';

final x1FbFirestoreData = RM.inject<FbFirestoreData>(
  () => FbFirestoreData(),
  debugPrintWhenNotifiedPreMessage: 'FbFirestoreData',
  sideEffects: SideEffects(
    initState: () => x1FbFirestoreCtrl.init(),
  ),
);

class FbFirestoreData {
  final title = 'FbFirestore';

  final rmSelectedId = x1XproductData.st.rmSelectedId;

  final rmProductFuture = x1XproductData.st.rmProductFuture;

  final rmProductStream = x1XproductData.st.rmProductStream;
}
