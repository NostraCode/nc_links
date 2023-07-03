part of '_index.dart';

class TodoRepoMock implements TodoRepo {
  @override
  Future<void> init() async {
    logxx.i(TodoRepoMock, 'inits....');
    Prov.todo.st.rxIsRead.toggle();
  }

  @override
  void dispose() {}

  @override
  Future<Todo> create(Todo item, TodoPars? pars) async {
    await Future.delayed(1.seconds);
    return FakeData.create(item);
  }

  @override
  Future<List<Todo>> read(TodoPars? pars) async {
    await Future.delayed(1.seconds);
    return FakeData.read(pars ?? TodoPars.instance);
  }

  @override
  Future update(List<Todo> items, TodoPars? pars) async {
    await Future.delayed(1.seconds);
    FakeData.update(items.first);
    //* ----- ----- ----- ----- -----
    // try {
    //   await Future.delayed(1.seconds);
    //   FakeData.update(items.first);
    //   throw Exception();
    // } catch (e) {
    //   logx.e(e.toString());
    //   rethrow;
    // }
    //* ----- ----- ----- ----- -----
  }

  @override
  Future delete(List<Todo> items, TodoPars? pars) async {
    await Future.delayed(1.seconds);
    FakeData.delete(items.first);
  }
}
