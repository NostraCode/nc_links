part of '../_index.dart';

class TodoDetailCharlie extends StatelessWidget {
  const TodoDetailCharlie({Key? key}) : super(key: key);

  TodoDetailCtrl get ct => Ctrl.todoDetail;
  TodoDetailData get dt => Data.todoDetail.st;

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
