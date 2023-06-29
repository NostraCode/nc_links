part of '_index.dart';

class TodoServ {
  TodoProv get pv => Prov.todo.st;

  init() => logxx.i(TodoServ, '...');
}
