part of '../_index.dart';

class TodoListItems extends StatelessWidget {
  const TodoListItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => _ct.refresh(),
      child: OnReactive(
        () => Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  const TodoListEmpty(),
                  ListView(
                    children: [
                      ...List.generate(
                        _dt.rxTodo.st.length,
                        (i) => _pv.itemx.inherited(
                          key: ValueKey(_dt.rxTodo.st[i].id),
                          item: () => _dt.rxTodo.st[i],
                          builder: (context) => const TodoListTile(),
                        ),
                      ),
                      const TodoListLoadMore(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
