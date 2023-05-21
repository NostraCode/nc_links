part of '../_index.dart';

class ForgetAppbar extends StatelessWidget {
  const ForgetAppbar({Key? key}) : super(key: key);

  ForgetCtrl get ct => Ctrl.forget;
  ForgetData get dt => Data.forget.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
    );
  }
}
