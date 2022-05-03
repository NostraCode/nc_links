part of '_index.dart';

final x1NeedLoginData = RM.inject<NeedLoginData>(
  () => NeedLoginData(),
  debugPrintWhenNotifiedPreMessage: 'NeedLoginData',
  sideEffects: SideEffects(initState: () => x1NeedLoginCtrl.init()),
);

class NeedLoginData {
  final rmTitle = 'NeedLogin'.inj();

  final rmInt = 0.inj();
}
