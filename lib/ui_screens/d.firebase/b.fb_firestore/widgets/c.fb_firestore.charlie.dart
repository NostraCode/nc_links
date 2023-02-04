part of '../_index.dart';

class FbFirestoreC extends StatelessWidget {
  const FbFirestoreC({Key? key}) : super(key: key);

  FbFirestoreCtrl get ct => Ctrl.fbFirestore;
  FbFirestoreData get dt => Data.fbFirestore.st;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              const Text('future'),
              OnBuilder<Product?>.all(
                listenTo: dt.rxProductFuture,
                onWaiting: () => const Text('loading...'),
                onError: (_, __) => const Text('error'),
                onData: (data) {
                  return data == null ? const Text('null') : Text('${data.total}');
                },
                // sideEffects: SideEffects(
                //   initState: () => ct.init(),
                // ),
              )
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              const Text('stream'),
              OnBuilder<Product?>.all(
                listenTo: dt.rxProductStream,
                onWaiting: () => const Text('loading...'),
                onError: (_, __) => const Text('error'),
                onData: (data) => Text('${(data?.total) ?? 'null'}'),
              )
            ],
          ),
        ),
      ],
    );
  }
}
