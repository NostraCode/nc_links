part of '../_index.dart';

class TodoDetailCharlie extends StatelessWidget {
  const TodoDetailCharlie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final item = _pv.itemx.call(context)!;

    return OnReactive(
      () => Column(
        children: [
          Text(item.st.no.toString()),
          Text(item.st.title),
          Text(item.st.description),
          Text(item.st.id),
          Text(Random().nextInt(100).toString()),
          OnReactive(() => Text('${_dt.rxInt.st}')),
          ElevatedButton(
            child: const Text('update'),
            onPressed: () {
              final newItem = Todo.mock().copyWith(
                id: item.st.id,
                no: item.st.no,
              );
              //* ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
              item.st = newItem;
              _ct.update(context, newItem);
              //* ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
            },
          )
        ],
      ),
    );
  }
}
