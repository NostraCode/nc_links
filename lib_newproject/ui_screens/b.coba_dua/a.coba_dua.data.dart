part of '_index.dart';

final x1CobaDuaData = RM.inject<CobaDuaData>(
  () => CobaDuaData(),
  debugPrintWhenNotifiedPreMessage: '',
  sideEffects: SideEffects(initState: () => x1CobaDuaCtrl.init()),
);

class CobaDuaData {
  final rxTitle = 'CobaDua'.inj();

  final rxInt = 0.inj();
}
