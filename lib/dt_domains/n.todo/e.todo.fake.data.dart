part of '_index.dart';

class FakeData {
  static List<Todo> list = List.generate(
    10,
    (index) => Todo(
      id: index,
      title: '$index' * 3,
      description: '$index' * 20,
      completed: false,
    ),
  ).reversed.toList();

  static printx() {
    logxx.s(FakeData, '${list.length}');
    logxx.s(FakeData, '${list.map((e) => '${e.id}. ${e.title}')}');
  }

  //* ----- ----- ----- ----- ----- ----- ----- ----- ----- -----

  static Todo create(Todo item) {
    final newItem = item.copyWith(id: list.first.id! + 1);
    list.insert(0, newItem);
    printx();
    return newItem;
  }

  static List<Todo> read(TodoPars pars) {
    final start = pars.start;
    final target = start + TodoPars.instance.limit;
    final end = math.min(target, list.length);
    printx();
    return list.sublist(start, end);
  }

  static void update(Todo item) {
    final i = list.indexWhere((el) => el.id == item.id);
    list[i] = item;
    printx();
  }

  static void delete(Todo item) {
    list.removeWhere((el) => el.id == item.id);
    printx();
  }
}
