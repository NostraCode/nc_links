part of '../_index.dart';

class TodoListCharlie extends StatelessWidget {
  const TodoListCharlie({Key? key}) : super(key: key);

  TodoListCtrl get ct => Ctrl.todoList;
  TodoListData get dt => Data.todoList.st;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(Random().nextInt(100).toString()),
        OnReactive(() => Text('${dt.rxInt.st}')),
      ],
    );
  }
}
