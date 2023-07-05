part of '_index.dart';

class TodoServ {
  init() => logxx.i(TodoServ, '...');

  Future<void> refresh() async {
    _pv.rxIsEnd.refresh();
    await _pv.rxTodo.crud.read(
      param: (para) => para!..start = 0,
    );
  }

  void loadMore() {
    _pv.rxTodo.crud.read(
      param: (para) => para!..start = _pv.rxTodo.st.length,
      middleState: (state, nextState) {
        if (nextState.length < TodoPara.instance.limit) {
          _pv.rxIsEnd.st = true;
        }
        return [...state, ...nextState];
      },
    );
  }

  void create(Todo todo) {
    _pv.rxTodo.crud.create(
      todo,
      isOptimistic: false,
      sideEffects: SideEffects.onData((data) {
        final lastItem = data.removeLast();
        data.insert(0, lastItem);
      }),
      onResult: (_) => nav.back(),
    );
  }

  void delete(String id) {
    _pv.rxTodo.crud.delete(
      where: (item) => item.id == id,
      isOptimistic: false,
      onResult: (_) => nav.back(),
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
      onResult: (_) => nav.back(),
    );
  }
}
