part of '_index.dart';

class TodoDetailCtrl {
  init() => logxx.i(TodoDetailCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  delete(String id) => _sv.delete(id);

  update(BuildContext context, Todo todo) => _sv.update(context, todo);
}
