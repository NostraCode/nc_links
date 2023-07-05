part of '../_index.dart';

class FbFirestoreC extends StatelessWidget {
  const FbFirestoreC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              const Text('future'),
              OnBuilder<Product?>.all(
                listenTo: _dt.rxProductFuture,
                onWaiting: () => const Text('loading...'),
                onError: (_, __) => const Text('error'),
                onData: (data) {
                  return data == null ? const Text('null') : Text('${data.total}');
                },
                // sideEffects: SideEffects(
                //   initState: () => _ct.init(),
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
                listenTo: _dt.rxProductStream,
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
