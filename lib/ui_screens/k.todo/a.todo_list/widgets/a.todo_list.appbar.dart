part of '../_index.dart';

class TodoListAppbar extends StatelessWidget {
  const TodoListAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
      centerTitle: true,
      actions: [
        Center(
          child: OutlinedButton(
            onPressed: () {
              _ct.setBufferNew();
              _ct.create(_dt.rxTodoBuffer.st);
            },
            child: const Text('create'),
          ),
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}
