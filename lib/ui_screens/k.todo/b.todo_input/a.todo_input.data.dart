part of '_index.dart';

class TodoInputData {
  final rxTitle = 'TodoInput'.inj();

  final rxInt = 0.inj();

  final rxTodo = _pv.rxTodo;

  final rxTodoBuffer = RM.inject<Todo?>(() => null);
}
