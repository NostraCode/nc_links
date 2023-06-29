part of '../_index.dart';

class TodoEditCharlie extends StatelessWidget {
  const TodoEditCharlie({Key? key}) : super(key: key);

  TodoEditCtrl get ct => Ctrl.todoEdit;
  TodoEditData get dt => Data.todoEdit.st;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(Random().nextInt(100).toString()),
        OnReactive(() => Text('${dt.rxInt.st}')),
      ],
    );
  }
}
