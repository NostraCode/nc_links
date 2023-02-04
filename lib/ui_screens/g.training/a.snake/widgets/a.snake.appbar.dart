part of '../_index.dart';

class SnakeAppbar extends StatelessWidget {
  const SnakeAppbar({Key? key}) : super(key: key);

  SnakeCtrl get ct => Ctrl.snake;
  SnakeData get dt => Data.snake.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.title)),
    );
  }
}
