part of '../_index.dart';

class NeedLoginCharlie extends StatelessWidget {
  const NeedLoginCharlie({Key? key}) : super(key: key);

  NeedLoginCtrl get ct => Ctrl.needLogin;
  NeedLoginData get dt => Data.needLogin.st;

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
