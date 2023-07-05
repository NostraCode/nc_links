part of '../_index.dart';

class TodoListLoadMore extends StatelessWidget {
  const TodoListLoadMore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: OnBuilder<List<Todo>>.orElse(
        listenTo: _dt.rxTodo,
        onError: (e, _) => Text('$e'),
        // onWaiting: () => const Text('loading...'),
        orElse: (data) => Visibility(
          visible: data.isNotEmpty,
          child: SizedBox(
            height: 80,
            child: Center(
              child: OnReactive(
                () => _dt.rxIsEnd.st
                    ? const Text('end of list')
                    : OnBuilder.orElse(
                        listenTo: _dt.rxTodo,
                        onWaiting: () => const Text('loading....'),
                        orElse: (data) => TextButton(
                          onPressed: () => _ct.loadMore(),
                          child: const Text('load more'),
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
