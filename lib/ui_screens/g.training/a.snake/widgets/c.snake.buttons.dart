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
