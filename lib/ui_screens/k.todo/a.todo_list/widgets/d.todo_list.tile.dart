part of '../_index.dart';

class TodoListTile extends StatelessWidget {
  const TodoListTile({Key? key, required this.item}) : super(key: key);

  final Todo item;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text('${item.id}. ${item.title}'),
        subtitle: Text(item.description),
        onTap: () => _ct.update(item.id ?? 0),
        onLongPress: () => _ct.delete(item.id ?? 0),
      ),
    );
  }
}
