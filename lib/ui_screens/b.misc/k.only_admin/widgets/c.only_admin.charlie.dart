part of '../_index.dart';

class OnlyAdminCharlie extends StatelessWidget {
  const OnlyAdminCharlie({Key? key}) : super(key: key);

  OnlyAdminCtrl get ct => x1OnlyAdminCtrl;
  OnlyAdminData get dt => x1OnlyAdminData.st;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(Random().nextInt(100).toString()),
        OnReactive(() => Text('${dt.rmInt.st}')),
      ],
    );
  }
}
