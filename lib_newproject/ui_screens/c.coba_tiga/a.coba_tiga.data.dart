part of '_index.dart';

final x1CobaTigaData = RM.inject<CobaTigaData>(
  () => CobaTigaData(),
  debugPrintWhenNotifiedPreMessage: '',
  sideEffects: SideEffects(initState: () => x1CobaTigaCtrl.init()),
);

class CobaTigaData {
  final rxTitle = 'CobaTiga'.inj();

  final rxInt = 0.inj();
}
