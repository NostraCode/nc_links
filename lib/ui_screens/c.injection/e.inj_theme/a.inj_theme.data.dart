part of '_index.dart';

final x1InjThemeData = RM.inject<InjThemeData>(
  () => InjThemeData(),
  debugPrintWhenNotifiedPreMessage: '',
  sideEffects: SideEffects(initState: () => x1InjThemeCtrl.init()),
);

class InjThemeData {
  final title = 'InjTheme';

  final rxInt = 0.inj();
  // final rxString = ''.inj();
  // final rxBool = true.inj();
  // final rxList = [''].inj();
  // final rxMap = {'': ''}.inj();

  // final rxInt = RM.inject<int>(() => 0);
  // final rxString = RM.inject<String>(() => '');
  // final rxBool = RM.inject<bool>(() => true);
  // final rxList = RM.inject<List<int>>(() => []);
  // final rxMap = RM.inject<Map<String, String>>(() => {});
}
