part of '../_index.dart';

class NeedLoginAppbar extends StatelessWidget {
  const NeedLoginAppbar({Key? key}) : super(key: key);

  NeedLoginCtrl get ct => Ctrl.needLogin;
  NeedLoginData get dt => Data.needLogin.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
    );
  }
}
