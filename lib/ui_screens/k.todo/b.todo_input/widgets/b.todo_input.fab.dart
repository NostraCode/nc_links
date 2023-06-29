part of '../_index.dart';

class TodoInputFab extends StatelessWidget {
  const TodoInputFab({Key? key}) : super(key: key);

  TodoInputCtrl get ct => Ctrl.todoInput;
  TodoInputData get dt => Data.todoInput.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
