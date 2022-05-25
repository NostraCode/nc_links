part of '../_index.dart';

class OnlyAdminAppbar extends StatelessWidget {
  const OnlyAdminAppbar({Key? key}) : super(key: key);

  OnlyAdminCtrl get ct => x1OnlyAdminCtrl;
  OnlyAdminData get dt => x1OnlyAdminData.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
    );
  }
}
