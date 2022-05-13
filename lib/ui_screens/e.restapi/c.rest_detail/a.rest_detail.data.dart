part of '_index.dart';

final x1RestDetailData = RM.inject<RestDetailData>(
  () => RestDetailData(),
  debugPrintWhenNotifiedPreMessage: 'RestDetailData',
  sideEffects: SideEffects(initState: () => x1RestDetailCtrl.init()),
);

class RestDetailData {
  final title = 'RestDetail';

  final rmUserFuture = x1UserData.st.rmUserFuture;
}
