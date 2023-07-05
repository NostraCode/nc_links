part of '../_index.dart';

class TodoInputIndicator extends StatelessWidget {
  const TodoInputIndicator({Key? key}) : super(key: key);

  TodoInputCtrl get ct => Ctrl.todoInput;
  TodoInputData get dt => Data.todoInput.st;

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
