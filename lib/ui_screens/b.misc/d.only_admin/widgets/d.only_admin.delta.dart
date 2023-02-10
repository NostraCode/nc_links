part of '../_index.dart';

class OnlyAdminDelta extends StatelessWidget {
  const OnlyAdminDelta({Key? key}) : super(key: key);

  OnlyAdminCtrl get ct => Ctrl.onlyAdmin;
  OnlyAdminData get dt => Data.onlyAdmin.st;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
