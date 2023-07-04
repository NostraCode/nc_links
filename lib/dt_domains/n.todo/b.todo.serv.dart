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

  void delete(String id) {
    _pv.rxTodo.crud.delete(
      where: (item) => item.id == id,
      isOptimistic: false,
    );
  }

  void update(BuildContext context, Todo todo) {
    _pv.rxTodo.crud.update(
      where: (item) => item.id == todo.id,
      set: (item) => todo,
      isOptimistic: false,
      sideEffects: SideEffects.onData((data) {
        _pv.rxTodo.item.call(context)!.state = todo;
      }),
    );
  }
}
