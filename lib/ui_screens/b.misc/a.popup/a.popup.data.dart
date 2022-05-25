part of '_index.dart';

final x1PopupData = RM.inject<PopupData>(
  () => PopupData(),
  debugPrintWhenNotifiedPreMessage: '',
  sideEffects: SideEffects(initState: () => x1PopupCtrl.init()),
);

class PopupData {
  final title = 'Popup';

  final rxInt = 0.inj();

  final rxShow = false.inj();
}
