part of '_index.dart';

class SnakeData {
  final title = 'Snake';

  final width = 5;

  List<List<ReactiveModel<int?>>> listx = [];

  final food = [0, 0].inj();

  List<List<int>> snake = [
    [0, 0]
  ];
}
