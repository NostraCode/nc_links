part of '_index.dart';

class TodoInputCtrl {
  TodoInputData get dt => Data.todoInput.st;

  init() => logxx.i(TodoInputCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);

  create(Todo todo) => _sv.create(todo);

  setBufferNew() {
    _dt.rxTodoBuffer.st = Todo.mock();
    logxx.s(TodoInputCtrl, 'item new title => ${_dt.rxTodoBuffer.st!.title}');
  }
}
