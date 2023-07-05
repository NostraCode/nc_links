part of '../_index.dart';

class TodoDetailCharlie extends StatelessWidget {
  const TodoDetailCharlie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              _ct.setBufferUpdate(data.id, data.no);
              _ct.update(context, _dt.rxTodoBuffer.st);
            },
          )
        ],
      ),
    );
  }
}
