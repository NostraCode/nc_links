part of '_index.dart';

class TodoListCtrl {
  TodoListData get dt => Data.todoList.st;

  init() => logxx.i(TodoListCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);
}
