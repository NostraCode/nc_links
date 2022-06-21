part of '../_index.dart';

class InjPessimisticEcho extends StatelessWidget {
  const InjPessimisticEcho({Key? key}) : super(key: key);

  InjPessimisticCtrl get ct => x1InjPessimisticCtrl;
  InjPessimisticData get dt => x1InjPessimisticData.st;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
