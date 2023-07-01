part of '../_index.dart';

class TodoListItems extends StatelessWidget {
  const TodoListItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => _ct.refresh(),
      child: OnReactive(
        () => _dt.rxTodo.st.isEmpty
            ? const Text('empty')
            : ListView.builder(
                itemCount: _dt.rxTodo.st.length + 1,
                itemBuilder: (context, i) {
                  if (i == _dt.rxTodo.st.length) return const TodoListLoadMore();
                  return TodoListTile(item: _dt.rxTodo.st[i]);
                },
              ),
      ),
    );
  }
}
