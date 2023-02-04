part of '../_index.dart';

class OnlyAdminAppbar extends StatelessWidget {
  const OnlyAdminAppbar({Key? key}) : super(key: key);

  OnlyAdminCtrl get ct => Ctrl.onlyAdmin;
  OnlyAdminData get dt => Data.onlyAdmin.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
    );
  }
}
