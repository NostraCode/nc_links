part of '_index.dart';

class HomeData {
  final title = 'Home';

  final rxInt = 0.inj();

  final rxSwitch = false.inj();

  final listOfStatus = List.generate(6, (i) => false.inj());
}
