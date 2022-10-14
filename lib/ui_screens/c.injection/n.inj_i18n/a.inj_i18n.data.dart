part of '_index.dart';

final x1InjI18nData = RM.inject<InjI18nData>(
  () => InjI18nData(),
  debugPrintWhenNotifiedPreMessage: '',
  sideEffects: SideEffects(initState: () => x1InjI18nCtrl.init()),
);

class InjI18nData {
  final title = 'InjI18n';

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
