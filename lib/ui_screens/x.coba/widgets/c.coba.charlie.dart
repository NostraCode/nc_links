part of '../_index.dart';

class CobaCharlie extends StatelessWidget {
  const CobaCharlie({Key? key}) : super(key: key);

  CobaCtrl get ct => Ctrl.coba;
  CobaData get dt => Data.coba.st;

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
