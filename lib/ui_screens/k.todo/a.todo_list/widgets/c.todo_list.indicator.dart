part of '../_index.dart';

class TodoListIndicator extends StatelessWidget {
  const TodoListIndicator({Key? key}) : super(key: key);

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
