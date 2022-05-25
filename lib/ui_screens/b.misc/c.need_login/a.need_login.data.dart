part of '_index.dart';

final x1NeedLoginData = RM.inject<NeedLoginData>(
  () => NeedLoginData(),
  debugPrintWhenNotifiedPreMessage: '',
  sideEffects: SideEffects(initState: () => x1NeedLoginCtrl.init()),
);

class NeedLoginData {
  final rxTitle = 'NeedLogin'.inj();

  final rxInt = 0.inj();
}
