part of '../_index.dart';

class TodoDetailFab extends StatelessWidget {
  const TodoDetailFab({Key? key}) : super(key: key);

  TodoDetailCtrl get ct => Ctrl.todoDetail;
  TodoDetailData get dt => Data.todoDetail.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
