part of '_index.dart';

final x1OnlyAdminData = RM.inject<OnlyAdminData>(
  () => OnlyAdminData(),
  debugPrintWhenNotifiedPreMessage: 'OnlyAdminData',
  sideEffects: SideEffects(initState: () => x1OnlyAdminCtrl.init()),
);

class OnlyAdminData {
  final rmTitle = 'OnlyAdmin'.inj();

  final rmInt = 0.inj();
}
