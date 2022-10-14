part of '_index.dart';

final x1OnlyAdminData = RM.inject<OnlyAdminData>(
  () => OnlyAdminData(),
  debugPrintWhenNotifiedPreMessage: '',
  sideEffects: SideEffects(initState: () => x1OnlyAdminCtrl.init()),
);

class OnlyAdminData {
  final rxTitle = 'OnlyAdmin'.inj();

  final rxInt = 0.inj();
}
