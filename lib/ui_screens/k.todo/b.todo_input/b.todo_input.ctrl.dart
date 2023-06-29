part of '_index.dart';

class TodoInputCtrl {
  TodoInputData get dt => Data.todoInput.st;

  init() => logxx.i(TodoInputCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);
}
