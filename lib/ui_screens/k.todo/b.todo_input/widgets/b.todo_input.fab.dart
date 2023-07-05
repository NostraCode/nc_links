part of '../_index.dart';

class TodoInputFab extends StatelessWidget {
  const TodoInputFab({Key? key}) : super(key: key);

  TodoInputCtrl get ct => Ctrl.todoInput;
  TodoInputData get dt => Data.todoInput.st;

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Visibility(
        visible: _dt.rxTodoBuffer.st != null,
        child: FloatingActionButton(
          child: const Icon(Icons.upload),
          onPressed: () => _ct.create(_dt.rxTodoBuffer.st!),
        ),
      ),
    );
  }
}
