part of '../_index.dart';

class InjPessimisticAppbar extends StatelessWidget {
  const InjPessimisticAppbar({Key? key}) : super(key: key);

  InjPessimisticCtrl get ct => x1InjPessimisticCtrl;
  InjPessimisticData get dt => x1InjPessimisticData.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
    );
  }
}
