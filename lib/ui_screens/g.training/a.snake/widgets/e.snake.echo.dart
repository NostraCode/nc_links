part of '../_index.dart';

class SnakeEcho extends StatelessWidget {
  const SnakeEcho({Key? key}) : super(key: key);

  SnakeCtrl get ct => Ctrl.snake;
  SnakeData get dt => Data.snake.st;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
