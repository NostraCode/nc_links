part of '../_index.dart';

class TodoListAppbar extends StatelessWidget {
  const TodoListAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
      centerTitle: true,
      actions: const [
        // TodoListPullText(),
        // TodoListLoadMore(),
        SizedBox(width: 10),
      ],
    );
  }
}
