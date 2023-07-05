part of '_index.dart';

class TodoRepo implements ICRUD<Todo, TodoPara> {
  @override
  void dispose() {}

  @override
  Future<void> init() {
    throw UnimplementedError();
  }

  @override
  Future<Todo> create(Todo item, TodoPara? param) {
    throw UnimplementedError();
  }

  @override
  Future delete(List<Todo> items, TodoPara? param) {
    throw UnimplementedError();
  }

  @override
  Future<List<Todo>> read(TodoPara? param) {
    throw UnimplementedError();
  }

  @override
  Future update(List<Todo> items, TodoPara? param) {
    throw UnimplementedError();
  }
}
