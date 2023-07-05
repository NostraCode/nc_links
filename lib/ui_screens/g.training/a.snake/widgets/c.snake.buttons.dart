part of '../_index.dart';

class SnakeButtons extends StatelessWidget {
  const SnakeButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          child: const Icon(Icons.keyboard_arrow_down),
          onPressed: () => _ct.moveSnake('D'),
        ),
        const SizedBoxW(5),
        ElevatedButton(
          child: const Icon(Icons.keyboard_arrow_up),
          onPressed: () => _ct.moveSnake('U'),
        ),
        const SizedBoxW(5),
        ElevatedButton(
          child: const Icon(Icons.keyboard_arrow_left),
          onPressed: () => _ct.moveSnake('L'),
        ),
        const SizedBoxW(5),
        ElevatedButton(
          child: const Icon(Icons.keyboard_arrow_right),
          onPressed: () => _ct.moveSnake('R'),
        ),
      ],
    );
  }
}
