part of '../_index.dart';

class TodoListEmpty extends StatelessWidget {
  const TodoListEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: OnBuilder<List<Todo>>.orElse(
        listenTo: _dt.rxTodo,
        // onWaiting: () => const Text('waiting...'),
        onError: (e, __) => Text('$e'),
        orElse: (data) => Visibility(
          visible: _dt.rxTodo.st.isEmpty,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'mobile => pull to refresh',
                  textScaleFactor: 0.8,
                ),
              ),
              Text('empty'),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
