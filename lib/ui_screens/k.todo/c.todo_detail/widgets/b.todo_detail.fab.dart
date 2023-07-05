part of '../_index.dart';

class TodoDetailFab extends StatelessWidget {
  const TodoDetailFab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.edit),
      onPressed: () => RM.navigate.to(
        _dt.rxTodo.item.reInherited(
          context: context,
          builder: (BuildContext context) => const TodoEditView(),
        ),
      ),
    );
  }
}
