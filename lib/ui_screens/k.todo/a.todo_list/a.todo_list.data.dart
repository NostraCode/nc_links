part of '_index.dart';

class TodoListData {
  final rxTitle = 'TodoList'.inj();

  final rxInt = 0.inj();

  final rxIsEnd = _pv.rxIsEnd;

  final rxIsRead = _pv.rxIsRead;

  final rxIsCreate = _pv.rxIsCreate;

  final rxIsRefresh = _pv.rxIsRefresh;

  final rxTodo = _pv.rxTodo;
}
