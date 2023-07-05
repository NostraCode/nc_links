part of '_index.dart';

class TodoListData {
  final rxTitle = 'TodoList'.inj();

  final rxInt = 0.inj();

  final rxIsEnd = _pv.rxIsEnd;

  final rxTodo = _pv.rxTodo;

  final rxTodoBuffer = RM.inject<Todo>(() => Todo.mock());
}
