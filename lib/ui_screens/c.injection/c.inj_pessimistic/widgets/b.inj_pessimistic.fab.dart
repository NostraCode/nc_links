part of '../_index.dart';

class InjPessimisticFab extends StatelessWidget {
  const InjPessimisticFab({Key? key}) : super(key: key);

  InjPessimisticCtrl get ct => x1InjPessimisticCtrl;
  InjPessimisticData get dt => x1InjPessimisticData.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.loop),
      onPressed: () => ct.action(),
    );
  }
}
