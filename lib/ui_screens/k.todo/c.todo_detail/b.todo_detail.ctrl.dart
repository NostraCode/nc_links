part of '_index.dart';

class TodoDetailCtrl {
  init() => logxx.i(TodoDetailCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  delete(String id) => _sv.delete(id);

  update(BuildContext context, Todo todo) => _sv.update(context, todo);

  setBufferNew() {
    _dt.rxTodoBuffer.st = Todo.mock();
    logxx.s(TodoDetailCtrl, 'item new title => ${_dt.rxTodoBuffer.st.title}');
  }

  setBufferUpdate(String id, int no) {
    _dt.rxTodoBuffer.st = Todo.mock().copyWith(id: id, no: no);
    logxx.s(TodoDetailCtrl, 'item new title => ${_dt.rxTodoBuffer.st.title}');
  }
}
