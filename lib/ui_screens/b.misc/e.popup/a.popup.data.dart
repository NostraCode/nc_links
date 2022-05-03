part of '_index.dart';

final x1PopupData = RM.inject<PopupData>(
  () => PopupData(),
  debugPrintWhenNotifiedPreMessage: 'PopupxData',
  sideEffects: SideEffects(initState: () => x1PopupCtrl.init()),
);

class PopupData {
  final title = 'Popup';

  final rmInt = 0.inj();

  final rmShow = false.inj();
}
