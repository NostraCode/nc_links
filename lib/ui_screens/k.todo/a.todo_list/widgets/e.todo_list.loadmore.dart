part of '../_index.dart';

class TodoListLoadMore extends StatelessWidget {
  const TodoListLoadMore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnBuilder<List<Todo>>.orElse(
      listenTo: _dt.rxTodo,
      // onWaiting: () => const Text('waiting...'),
      onError: (e, _) => Text('$e'),
      orElse: (data) => Visibility(
        visible: data.isNotEmpty,
        child: SizedBox(
          height: 80,
          child: Center(
            child: OnReactive(
              () => _dt.rxIsEnd.st
                  ? const TextButton(
                      onPressed: null,
                      child: Text('end of list'),
                    )
                  : OnReactive(
                      () => TextButton(
                        onPressed: _dt.rxTodo.isWaiting ? null : () => _ct.loadMore(),
                        child: Text(
                          _dt.rxTodo.isWaiting ? 'loading....' : 'load more',
                        ),
                      ),
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
