part of '_index.dart';

final x1CobaSatuData = RM.inject<CobaSatuData>(
  () => CobaSatuData(),
  debugPrintWhenNotifiedPreMessage: 'CobaSatuData',
  sideEffects: SideEffects(initState: () => x1CobaSatuCtrl.init()),
);

class CobaSatuData {
  final rmTitle = 'CobaSatu'.inj();

  final rmInt = 0.inj();
}
