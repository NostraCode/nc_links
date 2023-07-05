part of '_index.dart';

class TodoEditCtrl {
  TodoEditData get dt => Data.todoEdit.st;

  init() => logxx.i(TodoEditCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);

  update(BuildContext context, Todo todo) => _sv.update(context, todo);

  setBufferUpdate(String id, int no) {
    _dt.rxTodoBuffer.st = Todo.mock().copyWith(id: id, no: no);
    logxx.s(TodoEditCtrl, 'item new title => ${_dt.rxTodoBuffer.st.title}');
  }
}
