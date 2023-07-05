part of '../_index.dart';

class TodoDetailContent extends StatelessWidget {
  const TodoDetailContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnBuilder<Todo>.orElse(
      listenTo: _dt.rxTodo.item.call(context)!,
      onWaiting: () => const Text('waiting...'),
      onError: (error, refreshError) => Text('$error'),
      orElse: (data) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(data.no.toString()),
          Text(data.title),
          Text(data.description),
          Text(data.id),
        ],
      ),
    );
  }
}
