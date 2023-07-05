part of '_index.dart';

class TodoProv {
  final rxIsEnd = false.inj();

  final rxSelectedId = ''.inj();

  final rxTodo = RM.injectCRUD<Todo, TodoPara>(
    () => TodoRepoMock(),
    param: () => TodoPara.instance,
    readOnInitialization: true,
  );
}
