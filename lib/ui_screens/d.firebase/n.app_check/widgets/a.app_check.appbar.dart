part of '../_index.dart';

class AppCheckAppbar extends StatelessWidget {
  const AppCheckAppbar({Key? key}) : super(key: key);

  AppCheckCtrl get ct => Ctrl.appCheck;
  AppCheckData get dt => Data.appCheck.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
    );
  }
}
