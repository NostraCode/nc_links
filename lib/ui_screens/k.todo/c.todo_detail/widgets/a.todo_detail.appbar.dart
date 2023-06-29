part of '../_index.dart';

class TodoDetailAppbar extends StatelessWidget {
  const TodoDetailAppbar({Key? key}) : super(key: key);

  TodoDetailCtrl get ct => Ctrl.todoDetail;
  TodoDetailData get dt => Data.todoDetail.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
    );
  }
}
