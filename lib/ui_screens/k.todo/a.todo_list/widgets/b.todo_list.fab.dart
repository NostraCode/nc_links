part of '../_index.dart';

class TodoListFab extends StatelessWidget {
  const TodoListFab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => nav.to(Routes.todoInput),
    );
  }
}
