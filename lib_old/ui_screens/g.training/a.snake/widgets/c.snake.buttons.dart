part of '../_index.dart';

class SnakeButtons extends StatelessWidget {
  const SnakeButtons({Key? key}) : super(key: key);

  SnakeCtrl get ct => Ctrl.snake;
  SnakeData get dt => Data.snake.st;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          child: const Icon(Icons.keyboard_arrow_down),
          onPressed: () => ct.moveSnake('D'),
        ),
        const SizedBoxW(5),
        ElevatedButton(
          child: const Icon(Icons.keyboard_arrow_up),
          onPressed: () => ct.moveSnake('U'),
        ),
        const SizedBoxW(5),
        ElevatedButton(
          child: const Icon(Icons.keyboard_arrow_left),
          onPressed: () => ct.moveSnake('L'),
        ),
        const SizedBoxW(5),
        ElevatedButton(
          child: const Icon(Icons.keyboard_arrow_right),
          onPressed: () => ct.moveSnake('R'),
        ),
      ],
    );
  }
}
