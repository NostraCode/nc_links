part of '_index.dart';

final x1OverlayWidgetsData = RM.inject<OverlayWidgetsData>(
  () => OverlayWidgetsData(),
  debugPrintWhenNotifiedPreMessage: '',
  sideEffects: SideEffects(initState: () => x1OverlayWidgetsCtrl.init()),
);

class OverlayWidgetsData {
  final rxTitle = 'Overlay Widgets'.inj();

  final rxInt = 0.inj();
}
