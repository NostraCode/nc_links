part of '_index.dart';

class TodoListView extends StatelessWidget {
  const TodoListView({Key? key}) : super(key: key);

  TodoListCtrl get ct => Ctrl.todoList;
  TodoListData get dt => Data.todoList.st;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: TodoListAppbar(),
      ),
      floatingActionButton: TodoListFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TodoListCharlie(),
            TodoListDelta(),
            TodoListEcho(),
          ],
        ),
      ),
    );
  }
}
