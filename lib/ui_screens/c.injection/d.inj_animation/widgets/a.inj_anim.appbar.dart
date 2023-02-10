part of '../_index.dart';

class InjAnimAppbar extends StatelessWidget {
  const InjAnimAppbar({Key? key}) : super(key: key);

  InjAnimCtrl get ct => Ctrl.injAnim;
  InjAnimData get dt => Data.injAnim.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.title)),
    );
  }
}
