part of '_index.dart';

final x1FbAuthData = RM.inject<FbAuthData>(
  () => FbAuthData(),
  debugPrintWhenNotifiedPreMessage: '',
  sideEffects: SideEffects(initState: () => x1FbAuthCtrl.init()),
);

class FbAuthData {
  final title = 'FbAuth';

  final rxUser = x1AuthData.st.rxUser;
}
