part of '_index.dart';

final x1InjThemeData = RM.inject<InjThemeData>(
  () => InjThemeData(),
  debugPrintWhenNotifiedPreMessage: 'InjThemeData',
  sideEffects: SideEffects(initState: () => x1InjThemeCtrl.init()),
);

class InjThemeData {
  final title = 'InjTheme';

  final rmInt = 0.inj();
  // final rmString = ''.inj();
  // final rmBool = true.inj();
  // final rmList = [''].inj();
  // final rmMap = {'': ''}.inj();

  // final rmInt = RM.inject<int>(() => 0);
  // final rmString = RM.inject<String>(() => '');
  // final rmBool = RM.inject<bool>(() => true);
  // final rmList = RM.inject<List<int>>(() => []);
  // final rmMap = RM.inject<Map<String, String>>(() => {});
}
