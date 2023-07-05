part of '_index.dart';

class TodoServ {
  init() => logxx.i(TodoServ, '...');

  void checkNavBack(bool isNavBack) {
    if (isNavBack) {
      nav.back();
    }
  }

  void checkIsEnd(int length) {
    if (length < TodoPara.instance.limit) {
      _pv.rxIsEnd.st = true;
    }
  }

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
        checkIsEnd(nextState.length);
        return [...state, ...nextState];
      },
    );
  }

  void create(Todo todo, {bool isNavBack = true}) {
    _pv.rxTodo.crud.create(
      todo,
      isOptimistic: false,
      sideEffects: SideEffects.onData((data) {
        final lastItem = data.removeLast();
        data.insert(0, lastItem);
      }),
      onResult: (_) => checkNavBack(isNavBack),
    );
  }

  void delete(String id, {bool isNavBack = true}) {
    _pv.rxTodo.crud.delete(
      where: (item) => item.id == id,
      isOptimistic: false,
      onResult: (_) => checkNavBack(isNavBack),
    );
  }

  void update(BuildContext context, Todo todo, {bool isNavBack = true}) {
    _pv.rxTodo.crud.update(
      where: (item) => item.id == todo.id,
      set: (item) => todo,
      isOptimistic: false,
      sideEffects: SideEffects.onData((data) {
        _pv.rxTodo.item.call(context)!.state = todo;
      }),
      onResult: (_) => checkNavBack(isNavBack),
    );
  }
}
