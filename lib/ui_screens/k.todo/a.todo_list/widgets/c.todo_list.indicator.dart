part of '../_index.dart';

class TodoListIndicator extends StatelessWidget {
  const TodoListIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 2,
      child: OnReactive(
        () => _dt.rxTodo.onOrElse(
          onWaiting: () => const LinearProgressIndicator(
            backgroundColor: Colors.transparent,
          ),
          orElse: (data) => const SizedBox.shrink(),
        ),
      ),
    );
  }
}
