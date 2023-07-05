part of '_index.dart';

class TodoRepoMock implements TodoRepo {
  @override
  Future<void> init() async => logxx.i(TodoRepoMock, 'inits....');

  @override
  void dispose() {}

  @override
  Future<Todo> create(Todo item, TodoPara? pars) async {
    await Future.delayed(1.seconds);
    return FakeData.create(item);
  }

  @override
  Future<List<Todo>> read(TodoPara? pars) async {
    await Future.delayed(1.seconds);
    return FakeData.read(pars ?? TodoPara.instance);
  }

  @override
  Future update(List<Todo> items, TodoPara? pars) async {
    await Future.delayed(1.seconds);
    FakeData.update(items.first);
  }

  @override
  Future delete(List<Todo> items, TodoPara? pars) async {
    await Future.delayed(1.seconds);
    FakeData.delete(items.first);
  }
}
