part of '../_index.dart';

class InjPessimisticAppbar extends StatelessWidget {
  const InjPessimisticAppbar({Key? key}) : super(key: key);

  InjPessimisticCtrl get ct => Ctrl.injPessimistic;
  InjPessimisticData get dt => Data.injPessimistic.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
    );
  }
}
