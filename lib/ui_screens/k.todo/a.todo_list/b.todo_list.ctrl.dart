part of '_index.dart';

class TodoListCtrl {
  init() => logxx.i(TodoListCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  Future<void> refresh() => _sv.refresh();

  loadMore() => _sv.loadMore();

  create() => _sv.create();

  delete(int id) => _sv.delete(id);

  update(int id) => _sv.update(id);
}
