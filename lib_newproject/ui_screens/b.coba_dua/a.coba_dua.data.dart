part of '_index.dart';

final x1CobaDuaData = RM.inject<CobaDuaData>(
  () => CobaDuaData(),
  debugPrintWhenNotifiedPreMessage: 'CobaDuaData',
  sideEffects: SideEffects(initState: () => x1CobaDuaCtrl.init()),
);

class CobaDuaData {
  final rmTitle = 'CobaDua'.inj();

  final rmInt = 0.inj();
}
