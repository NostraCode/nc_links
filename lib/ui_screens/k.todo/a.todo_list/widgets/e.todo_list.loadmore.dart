part of '../_index.dart';

class TodoListLoadMore extends StatelessWidget {
  const TodoListLoadMore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Center(
        child: OnReactive(
          () => _dt.rxIsEnd.st
              ? const TextButton(
                  onPressed: null,
                  child: Text('end of list'),
                )
              : OnReactive(
                  () => _dt.rxTodo.onOrElse(
                    onWaiting: () => const Text('loading...'),
                    orElse: (data) => TextButton(
                      onPressed: () => _ct.loadMore(),
                      child: const Text('load more'),
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
