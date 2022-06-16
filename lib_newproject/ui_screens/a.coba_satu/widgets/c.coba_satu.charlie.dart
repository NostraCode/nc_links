part of '../_index.dart';

class CobaSatuCharlie extends StatelessWidget {
  const CobaSatuCharlie({Key? key}) : super(key: key);

  CobaSatuCtrl get ct => x1CobaSatuCtrl;
  CobaSatuData get dt => x1CobaSatuData.st;

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
