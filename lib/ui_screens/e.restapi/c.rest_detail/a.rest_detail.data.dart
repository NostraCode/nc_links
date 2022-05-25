part of '_index.dart';

final x1RestDetailData = RM.inject<RestDetailData>(
  () => RestDetailData(),
  debugPrintWhenNotifiedPreMessage: '',
  sideEffects: SideEffects(initState: () => x1RestDetailCtrl.init()),
);

class RestDetailData {
  final title = 'RestDetail';

  final rxUserFuture = x1UserData.st.rxUserFuture;
}
