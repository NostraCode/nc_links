part of '_index.dart';

class FakeData {
  static List<Todo> list = List.generate(
    10,
    (index) => Todo.mock().copyWith(
      no: index,
      title: '$index' * 3,
      description: '$index' * 20,
    ),
  ).reversed.toList();

  static printx() {
    logxx.s(FakeData, '${list.length}');
    logxx.s(FakeData, '${list.map((e) => e.title)}');
  }

  //* ----- ----- ----- ----- ----- ----- ----- ----- ----- -----

  static Todo create(Todo item) {
    final newItem = item.copyWith(no: list.first.no + 1);
    list.insert(0, newItem);
    printx();
    return newItem;
  }

  static List<Todo> read(TodoPara pars) {
    final start = pars.start;
    final target = start + TodoPara.instance.limit;
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
