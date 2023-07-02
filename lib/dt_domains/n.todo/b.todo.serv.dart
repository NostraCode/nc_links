part of '_index.dart';

class TodoServ {
  init() => logxx.i(TodoServ, '...');

  Future<void> refresh() async {
    // await _pv.rxTodo.refresh();
    _pv.rxIsRefresh.toggle();
    await _pv.rxTodo.crud.read(
      param: (para) => TodoPars.instance..start = 0,
    );
  }

  void loadMore() {
    _pv.rxIsRead.toggle();
    _pv.rxTodo.crud.read(
      param: (para) => TodoPars.instance..start = _pv.rxTodo.st.length,
    );
  }

  void create() {
    _pv.rxIsCreate.toggle();
    _pv.rxTodo.crud.create(
      Todo.mock(),
      isOptimistic: false,
    );
  }

  void delete(int id) {
    _pv.rxTodo.crud.delete(
      where: (item) => item.id == id,
      isOptimistic: false,
    );
  }

  void update(int id) {
    _pv.rxTodo.crud.update(
      where: (item) => item.id == id,
      set: (item) => Todo.mock(id),
      isOptimistic: false,
    );
  }
}
