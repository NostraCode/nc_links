part of '../_index.dart';

class TodoListFab extends StatelessWidget {
  const TodoListFab({Key? key}) : super(key: key);

  TodoListCtrl get ct => Ctrl.todoList;
  TodoListData get dt => Data.todoList.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
