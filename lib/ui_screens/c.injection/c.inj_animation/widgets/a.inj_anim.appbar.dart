part of '../_index.dart';

class InjAnimAppbar extends StatelessWidget {
  const InjAnimAppbar({Key? key}) : super(key: key);

  InjAnimCtrl get ct => x1InjAnimCtrl;
  InjAnimData get dt => x1InjAnimData.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.title)),
    );
  }
}
