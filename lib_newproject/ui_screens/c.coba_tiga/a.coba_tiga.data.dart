part of '_index.dart';

final x1CobaTigaData = RM.inject<CobaTigaData>(
  () => CobaTigaData(),
  debugPrintWhenNotifiedPreMessage: 'CobaTigaData',
  sideEffects: SideEffects(initState: () => x1CobaTigaCtrl.init()),
);

class CobaTigaData {
  final rmTitle = 'CobaTiga'.inj();

  final rmInt = 0.inj();
}
