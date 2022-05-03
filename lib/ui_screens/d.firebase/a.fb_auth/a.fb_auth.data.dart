part of '_index.dart';

final x1FbAuthData = RM.inject<FbAuthData>(
  () => FbAuthData(),
  debugPrintWhenNotifiedPreMessage: 'FbAuthData',
  sideEffects: SideEffects(initState: () => x1FbAuthCtrl.init()),
);

class FbAuthData {
  final title = 'FbAuth';

  final rmUser = x1XauthData.st.rmUser;
}
