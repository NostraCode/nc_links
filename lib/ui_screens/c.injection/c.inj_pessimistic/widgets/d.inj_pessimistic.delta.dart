part of '../_index.dart';

class InjPessimisticDelta extends StatelessWidget {
  const InjPessimisticDelta({Key? key}) : super(key: key);

  InjPessimisticCtrl get ct => Ctrl.injPessimistic;
  InjPessimisticData get dt => Data.injPessimistic.st;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
