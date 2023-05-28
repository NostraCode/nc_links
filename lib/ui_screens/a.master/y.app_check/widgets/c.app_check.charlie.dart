part of '../_index.dart';

class AppCheckCharlie extends StatelessWidget {
  const AppCheckCharlie({Key? key}) : super(key: key);

  AppCheckCtrl get ct => Ctrl.appCheck;
  AppCheckData get dt => Data.appCheck.st;

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
