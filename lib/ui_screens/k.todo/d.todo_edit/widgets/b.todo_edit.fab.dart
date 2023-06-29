part of '../_index.dart';

class TodoEditFab extends StatelessWidget {
  const TodoEditFab({Key? key}) : super(key: key);

  TodoEditCtrl get ct => Ctrl.todoEdit;
  TodoEditData get dt => Data.todoEdit.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
