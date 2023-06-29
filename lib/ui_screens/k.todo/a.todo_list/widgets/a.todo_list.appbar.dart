part of '../_index.dart';

class TodoListAppbar extends StatelessWidget {
  const TodoListAppbar({Key? key}) : super(key: key);

  TodoListCtrl get ct => Ctrl.todoList;
  TodoListData get dt => Data.todoList.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
    );
  }
}
