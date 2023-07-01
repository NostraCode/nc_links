part of '_index.dart';

class TodoServ {
  init() => logxx.i(TodoServ, '...');

  void refresh() {
    // _pv.rxTodo.cleanState();
    // _pv.rxTodo.initializeState();
    // _pv.rxTodo.refresh();
    // _pv.rxTodo.setToIsWaiting();
    // _pv.rxTodo.refresh();

    logx.e('refreshhhh');

    // _pv.rxIsRead.toggle();
    // _pv.rxTodo.crud.read(
    //   param: (para) => TodoPars.instance..start = 0,
    // );
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
