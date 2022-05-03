part of '_index.dart';

final x1TemplateData = RM.inject<TemplateData>(
  () => TemplateData(),
  debugPrintWhenNotifiedPreMessage: 'TemplateData',
  sideEffects: SideEffects(initState: () => x1TemplateCtrl.init()),
);

class TemplateData {
  final rmTitle = 'Template'.inj();

  final rmInt = 0.inj();
}
