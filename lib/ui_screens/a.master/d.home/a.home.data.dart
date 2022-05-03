part of '_index.dart';

final x1HomeData = RM.inject<HomeData>(
  () => HomeData(),
  debugPrintWhenNotifiedPreMessage: 'HomexData',
  sideEffects: SideEffects(initState: () => x1HomexCtrl.init()),
);

class HomeData {
  final title = 'Home';

  final rmInt = 0.inj();

  final listOfStatus = List.generate(5, (i) => false.inj());
}
