part of '../_index.dart';

class NeedLoginCharlie extends StatelessWidget {
  const NeedLoginCharlie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(Random().nextInt(100).toString()),
        OnReactive(() => Text('${_dt.rxInt.st}')),
      ],
    );
  }
}
