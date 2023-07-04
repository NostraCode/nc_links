part of '../_index.dart';

class TodoListItems extends StatelessWidget {
  const TodoListItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnBuilder<List<Todo>>.orElse(
      listenTo: _dt.rxTodo,
      // onWaiting: () => const Text('waiting...'),
      onError: (error, refreshError) => Text('$error'),
      orElse: (data) => ListView(
        children: [
          ...List.generate(
            _dt.rxTodo.st.length,
            (i) => _dt.rxTodo.item.inherited(
              key: ValueKey(_dt.rxTodo.st[i].id),
              item: () => _dt.rxTodo.st[i],
              builder: (context) => const TodoListTile(),
            ),
          ),
          const TodoListLoadMore(),
        ],
      ),
    );
  }
}
