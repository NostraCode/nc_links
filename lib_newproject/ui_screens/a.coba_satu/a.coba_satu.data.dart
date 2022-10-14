part of '_index.dart';

final x1CobaSatuData = RM.inject<CobaSatuData>(
  () => CobaSatuData(),
  debugPrintWhenNotifiedPreMessage: '',
  sideEffects: SideEffects(initState: () => x1CobaSatuCtrl.init()),
);

class CobaSatuData {
  final rxTitle = 'CobaSatu'.inj();

  final rxInt = 0.inj();
}
