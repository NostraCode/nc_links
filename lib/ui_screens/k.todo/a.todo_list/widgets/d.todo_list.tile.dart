part of '../_index.dart';

class TodoListTile extends StatelessWidget {
  const TodoListTile({Key? key}) : super(key: key);
  // const TodoListTile({Key? key, required this.item}) : super(key: key);
  // final Todo item;

  @override
  Widget build(BuildContext context) {
    final item = _pv.itemx.call(context)!;

    return OnReactive(
      () => Card(
        child: ListTile(
          title: Text('${item.st.no} # ${item.st.title} # ${item.st.description}'),
          subtitle: Text(item.st.id),
          onTap: () => RM.navigate.to(
            item.reInherited(
              context: context,
              builder: (BuildContext context) => const TodoDetailView(),
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {
                  final newItem = Todo.mock().copyWith(
                    id: item.st.id,
                    no: item.st.no,
                  );
                  //* ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
                  // item.st = newItem;
                  _ct.update(context, newItem);
                  //* ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
                },
                icon: const Icon(Icons.loop),
              ),
              IconButton(
                onPressed: () => item.undoState(),
                icon: const Icon(Icons.undo),
              ),
              IconButton(
                onPressed: () => _ct.delete(item.st.id),
                icon: const Icon(Icons.delete),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
