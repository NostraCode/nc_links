part of '_index.dart';

class TodoListCtrl {
  init() => logxx.i(TodoListCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  Future<void> refresh() => _sv.refresh();

  loadMore() => _sv.loadMore();

  create(Todo todo) => _sv.create(todo, isNavBack: false);

  delete(String id) => _sv.delete(id, isNavBack: false);

  update(BuildContext context, Todo todo) => _sv.update(context, todo, isNavBack: false);

  setBufferNew() {
    _dt.rxTodoBuffer.st = Todo.mock();
    logxx.s(TodoDetailCtrl, 'item new title => ${_dt.rxTodoBuffer.st.title}');
  }

  setBufferUpdate(String id, int no) {
    _dt.rxTodoBuffer.st = Todo.mock().copyWith(id: id, no: no);
    logxx.s(TodoDetailCtrl, 'item new title => ${_dt.rxTodoBuffer.st.title}');
  }

  onTap(BuildContext context, String id) {
    _dt.rxSelectedId.st = id;
    RM.navigate.to(
      _dt.rxTodo.item.reInherited(
        context: context,
        builder: (BuildContext context) => const TodoDetailView(),
      ),
    );
  }
}
