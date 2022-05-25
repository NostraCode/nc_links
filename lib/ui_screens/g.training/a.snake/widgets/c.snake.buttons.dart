part of '../_index.dart';

class SnakeButtons extends StatelessWidget {
  const SnakeButtons({Key? key}) : super(key: key);

  SnakeCtrl get ct => x1SnakeCtrl;
  SnakeData get dt => x1SnakeData.st;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          child: const Text('D'),
          onPressed: () => ct.moveSnake('D'),
        ),
        ElevatedButton(
          child: const Text('U'),
          onPressed: () => ct.moveSnake('U'),
        ),
        ElevatedButton(
          child: const Text('L'),
          onPressed: () => ct.moveSnake('L'),
        ),
        ElevatedButton(
          child: const Text('R'),
          onPressed: () => ct.moveSnake('R'),
        ),
      ],
    );
  }
}
