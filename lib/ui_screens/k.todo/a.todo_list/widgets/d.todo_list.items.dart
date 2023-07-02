part of '../_index.dart';

class TodoListItems extends StatelessWidget {
  const TodoListItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => _ct.refresh(),
      child: OnReactive(
        () => Stack(
          children: [
            const TodoListEmpty(),
            ListView(
              children: [
                ...List.generate(
                  _dt.rxTodo.st.length,
                  (i) => TodoListTile(item: _dt.rxTodo.st[i]),
                ),
                const TodoListLoadMore(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
