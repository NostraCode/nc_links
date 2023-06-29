part of '../_index.dart';

class TodoListDelta extends StatelessWidget {
  const TodoListDelta({Key? key}) : super(key: key);

  TodoListCtrl get ct => Ctrl.todoList;
  TodoListData get dt => Data.todoList.st;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
