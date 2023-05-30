part of '../_index.dart';

class CodeAppbar extends StatelessWidget {
  const CodeAppbar({Key? key}) : super(key: key);

  CodeCtrl get ct => Ctrl.code;
  CodeData get dt => Data.code.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
    );
  }
}
