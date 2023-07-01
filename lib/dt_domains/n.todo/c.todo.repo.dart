part of '_index.dart';

class TodoRepo implements ICRUD<Todo, TodoPars> {
  @override
  void dispose() {}

  @override
  Future<void> init() {
    throw UnimplementedError();
  }

  @override
  Future<Todo> create(Todo item, TodoPars? param) {
    throw UnimplementedError();
  }

  @override
  Future delete(List<Todo> items, TodoPars? param) {
    throw UnimplementedError();
  }

  @override
  Future<List<Todo>> read(TodoPars? param) {
    throw UnimplementedError();
  }

  @override
  Future update(List<Todo> items, TodoPars? param) {
    throw UnimplementedError();
  }
}
