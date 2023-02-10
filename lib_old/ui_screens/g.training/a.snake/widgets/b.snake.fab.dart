part of '../_index.dart';

class SnakeFab extends StatelessWidget {
  const SnakeFab({Key? key}) : super(key: key);

  SnakeCtrl get ct => Ctrl.snake;
  SnakeData get dt => Data.snake.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {},
    );
  }
}
