part of '../_index.dart';

class TodoEditContent extends StatelessWidget {
  const TodoEditContent({Key? key}) : super(key: key);

  TodoEditCtrl get ct => Ctrl.todoEdit;
  TodoEditData get dt => Data.todoEdit.st;

  @override
  Widget build(BuildContext context) {
    _dt.rxTodoBuffer.st = _dt.rxTodo.item.call(context)!.st;
    return OnReactive(
      () => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(_dt.rxTodoBuffer.st.no.toString()),
          Text(_dt.rxTodoBuffer.st.title),
          Text(_dt.rxTodoBuffer.st.description),
          Text(_dt.rxTodoBuffer.st.id),
          ElevatedButton(
            child: const Text('buffer edit'),
            onPressed: () {
              _ct.setBufferUpdate(_dt.rxTodoBuffer.st.id, _dt.rxTodoBuffer.st.no);
            },
          )
        ],
      ),
    );
  }
}
