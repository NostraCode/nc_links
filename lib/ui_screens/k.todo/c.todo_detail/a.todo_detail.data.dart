part of '_index.dart';

class TodoDetailData {
  final rxTitle = 'TodoDetail'.inj();

  final rxInt = 0.inj();

  final rxIsEnd = _pv.rxIsEnd;

  final rxTodo = _pv.rxTodo;

  final rxTodoBuffer = RM.inject(() => Todo.mock());
}
