part of '../_index.dart';

class NeedLoginCharlie extends StatelessWidget {
  const NeedLoginCharlie({Key? key}) : super(key: key);

  NeedLoginCtrl get ct => x1NeedLoginCtrl;
  NeedLoginData get dt => x1NeedLoginData.st;

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
