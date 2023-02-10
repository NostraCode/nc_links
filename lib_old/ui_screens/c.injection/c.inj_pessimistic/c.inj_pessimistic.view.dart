part of '_index.dart';

class InjPessimisticView extends StatelessWidget {
  const InjPessimisticView({Key? key}) : super(key: key);

  InjPessimisticCtrl get ct => Ctrl.injPessimistic;
  InjPessimisticData get dt => Data.injPessimistic.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: InjPessimisticAppbar(),
      ),
      floatingActionButton: const InjPessimisticFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OnBuilder<int?>.all(
              listenToMany: [dt.rxInt],
              onWaiting: () => const CircularProgressIndicator(),
              onError: (_, __) => const Text('error'),
              onData: (_) => Text('${dt.rxInt.st}'),
            ),
          ],
        ),
      ),
    );
  }
}
