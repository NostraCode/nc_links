part of '../_index.dart';

class OnlyAdminEcho extends StatelessWidget {
  const OnlyAdminEcho({Key? key}) : super(key: key);

  OnlyAdminCtrl get ct => Ctrl.onlyAdmin;
  OnlyAdminData get dt => Data.onlyAdmin.st;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
