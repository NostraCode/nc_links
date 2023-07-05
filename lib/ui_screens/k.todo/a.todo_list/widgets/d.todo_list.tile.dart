part of '../_index.dart';

class TodoListTile extends StatelessWidget {
  const TodoListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnBuilder<Todo>.orElse(
      listenToMany: [_dt.rxSelectedId, _dt.rxTodo.item.call(context)!],
      onWaiting: () => const Text('waiting...'),
      onError: (error, refreshError) => Text('$error'),
      orElse: (data) => Card(
        child: ListTile(
          selected: data.id == _dt.rxSelectedId.st,
          onTap: () => _ct.onTap(context, data.id),
          title: Text('${data.no} # ${data.title} # ${data.description}'),
          subtitle: Text(data.id),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {
                  _ct.setBufferUpdate(data.id, data.no);
                  _ct.update(context, _dt.rxTodoBuffer.st);
                },
                icon: const Icon(Icons.loop),
              ),
              IconButton(
                onPressed: () => _ct.delete(data.id),
                icon: const Icon(Icons.delete),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
