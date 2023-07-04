part of '../_index.dart';

class TodoListTile extends StatelessWidget {
  const TodoListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final datax = _dt.rxTodo.item.call(context)!;

    return OnBuilder<Todo>.orElse(
      listenTo: _dt.rxTodo.item.call(context)!,
      onWaiting: () => const Text('waiting...'),
      onError: (error, refreshError) => Text('$error'),
      orElse: (data) => Card(
        child: ListTile(
          title: Text('${data.no} # ${data.title} # ${data.description}'),
          subtitle: Text(data.id),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {
                  final newItem = Todo.mock().copyWith(
                    id: data.id,
                    no: data.no,
                  );
                  logx.s('----- ----- ----- ----- -----');
                  logxx.s(TodoListTile, newItem.title);
                  _ct.update(context, newItem);
                },
                icon: const Icon(Icons.loop),
              ),
              IconButton(
                onPressed: () => _ct.delete(data.id),
                icon: const Icon(Icons.delete),
              ),
            ],
          ),
          onTap: () => RM.navigate.to(
            _dt.rxTodo.item.reInherited(
              context: context,
              builder: (BuildContext context) => const TodoDetailView(),
            ),
          ),
        ),
      ),
    );
  }
}
