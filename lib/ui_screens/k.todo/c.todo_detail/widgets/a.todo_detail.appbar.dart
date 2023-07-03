part of '../_index.dart';

class TodoDetailAppbar extends StatelessWidget {
  const TodoDetailAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final item = _dt.rxTodo.item(context)!;

    return AppBar(
      title: OnReactive(
        () => Text(item.st.title),
      ),
    );
  }
}
