part of '../_index.dart';

class OnlyAdminCharlie extends StatelessWidget {
  const OnlyAdminCharlie({Key? key}) : super(key: key);

  OnlyAdminCtrl get ct => Ctrl.onlyAdmin;
  OnlyAdminData get dt => Data.onlyAdmin.st;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(Random().nextInt(100).toString()),
        OnReactive(() => Text('${dt.rxInt.st}')),
      ],
    );
  }
}
