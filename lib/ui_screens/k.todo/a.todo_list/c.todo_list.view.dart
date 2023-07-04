part of '_index.dart';

class TodoListView extends StatelessWidget {
  const TodoListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: TodoListAppbar(),
      ),
      floatingActionButton: const TodoListFab(),
      body: Column(
        children: [
          const TodoListIndicator(),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () => _ct.refresh(),
              child: const Column(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        TodoListEmpty(),
                        TodoListItems(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
