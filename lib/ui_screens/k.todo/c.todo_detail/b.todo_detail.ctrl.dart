part of '_index.dart';

class TodoDetailCtrl {
  TodoDetailData get dt => Data.todoDetail.st;

  init() => logxx.i(TodoDetailCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);
}
