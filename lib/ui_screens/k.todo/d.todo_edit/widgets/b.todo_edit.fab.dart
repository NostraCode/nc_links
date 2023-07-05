part of '../_index.dart';

class TodoEditFab extends StatelessWidget {
  const TodoEditFab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.save),
      onPressed: () => _ct.update(context, _dt.rxTodoBuffer.st),
    );
  }
}
