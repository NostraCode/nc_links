part of '../_index.dart';

class TodoEditIndicator extends StatelessWidget {
  const TodoEditIndicator({Key? key}) : super(key: key);

  TodoEditCtrl get ct => Ctrl.todoEdit;
  TodoEditData get dt => Data.todoEdit.st;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 2,
      child: OnBuilder<List<Todo>>.orElse(
        listenTo: _dt.rxTodo,
        onError: (e, __) => Text('$e'),
        orElse: (data) => const SizedBox.shrink(),
        onWaiting: () => const LinearProgressIndicator(
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}
