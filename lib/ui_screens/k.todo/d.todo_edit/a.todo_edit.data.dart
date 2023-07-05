part of '_index.dart';

class TodoEditData {
  final rxTitle = 'TodoEdit'.inj();

  final rxInt = 0.inj();

  final rxIsEnd = _pv.rxIsEnd;

  final rxTodo = _pv.rxTodo;

  final rxTodoBuffer = RM.inject<Todo>(() => Todo.mock());
}
