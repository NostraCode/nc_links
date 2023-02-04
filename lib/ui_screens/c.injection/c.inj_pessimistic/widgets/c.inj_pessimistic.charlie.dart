part of '../_index.dart';

class InjPessimisticCharlie extends StatelessWidget {
  const InjPessimisticCharlie({Key? key}) : super(key: key);

  InjPessimisticCtrl get ct => Ctrl.injPessimistic;
  InjPessimisticData get dt => Data.injPessimistic.st;

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
