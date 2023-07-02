part of '_index.dart';

class TodoProv {
  final rxIsEnd = false.inj();

  final rxIsRead = false.inj();

  final rxIsCreate = false.inj();

  final rxIsRefresh = false.inj();

  final rxTodo = RM.injectCRUD<Todo, TodoPars>(
    () => TodoRepoMock(),
    param: () => TodoPars.instance,
    readOnInitialization: true,
    sideEffects: SideEffects.onData((_) {
      logxx.s(TodoProv, 'isRead => ${_pv.rxIsRead.st}');
      logxx.s(TodoProv, 'isCreate => ${_pv.rxIsCreate.st}');
      logxx.s(TodoProv, 'isRefresh => ${_pv.rxIsRefresh.st}');
      _pv.rxIsRead.refresh();
      _pv.rxIsCreate.refresh();
      _pv.rxIsRefresh.refresh();
    }),
    stateInterceptor: (curr, next) {
      if (!next.hasData) return next;

      if (_pv.rxIsRefresh.st) {
        _pv.rxIsEnd.st = false;
        if (next.state.length < TodoPars.instance.limit) {
          _pv.rxIsEnd.st = true;
        }
        return next.copyToHasData([...next.state]);
      }

      if (_pv.rxIsRead.st) {
        if (next.state.length < TodoPars.instance.limit) {
          _pv.rxIsEnd.st = true;
        }
        return next.copyToHasData([...curr.state, ...next.state]);
      }

      if (_pv.rxIsCreate.st) {
        final lastItem = next.state.removeLast();
        next.state.insert(0, lastItem);
      }
      return next;
    },
  );
}
