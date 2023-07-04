part of '../_index.dart';

class TodoDetailCharlie extends StatelessWidget {
  const TodoDetailCharlie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final datax = _dt.rxTodo.item.call(context)!;

    return OnBuilder<Todo>.orElse(
      listenTo: _dt.rxTodo.item.call(context)!,
      onWaiting: () => const Text('waiting...'),
      onError: (error, refreshError) => Text('$error'),
      orElse: (data) => Column(
        children: [
          Text(data.no.toString()),
          Text(data.title),
          Text(data.description),
          Text(data.id),
          Text(Random().nextInt(100).toString()),
          OnReactive(() => Text('${_dt.rxInt.st}')),
          ElevatedButton(
            child: const Text('update'),
            onPressed: () {
              final newItem = Todo.mock().copyWith(
                id: data.id,
                no: data.no,
              );
              logx.s('----- ----- ----- ----- -----');
              logxx.s(TodoDetailCharlie, newItem.title);
              _ct.update(context, newItem);
            },
          )
        ],
      ),
    );
  }
}
