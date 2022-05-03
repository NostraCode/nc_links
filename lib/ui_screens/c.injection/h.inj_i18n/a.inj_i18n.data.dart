part of '_index.dart';

final x1InjI18nData = RM.inject<InjI18nData>(
  () => InjI18nData(),
  debugPrintWhenNotifiedPreMessage: 'InjI18nData',
  sideEffects: SideEffects(initState: () => x1InjI18nCtrl.init()),
);

class InjI18nData {
  final title = 'InjI18n';

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
