part of '_index.dart';

class TodoDetailData {
  final rxTitle = 'TodoDetail'.inj();

  final rxInt = 0.inj();

  final rxIsEnd = _pv.rxIsEnd;

  final rxIsRead = _pv.rxIsRead;

  final rxIsCreate = _pv.rxIsCreate;

  final rxIsRefresh = _pv.rxIsRefresh;

  final rxTodo = _pv.rxTodo;
}
