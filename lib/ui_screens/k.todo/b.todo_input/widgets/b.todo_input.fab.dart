part of '../_index.dart';

class TodoInputFab extends StatelessWidget {
  const TodoInputFab({Key? key}) : super(key: key);

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
