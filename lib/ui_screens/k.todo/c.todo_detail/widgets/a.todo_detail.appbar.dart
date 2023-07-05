part of '../_index.dart';

class TodoDetailAppbar extends StatelessWidget {
  const TodoDetailAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final item = _dt.rxTodo.item.call(context)!;

    return AppBar(
      title: OnReactive(
        () => Text(_dt.rxTitle.st),
      ),
      centerTitle: true,
      actions: [
        Center(
          child: OutlinedButton(
            onPressed: () => _ct.delete(item.st.id),
            child: const Text('delete'),
          ),
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}
