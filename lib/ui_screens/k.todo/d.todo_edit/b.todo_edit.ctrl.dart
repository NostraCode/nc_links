part of '_index.dart';

class TodoEditCtrl {
  TodoEditData get dt => Data.todoEdit.st;

  init() => logxx.i(TodoEditCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);
}
