part of '../_index.dart';

class ProductListLoadmore extends StatelessWidget {
  const ProductListLoadmore({Key? key}) : super(key: key);

  ProductListCtrl get ct => x1ProductListCtrl;
  ProductListData get dt => x1ProductListData.st;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OnBuilder<List<Productx>>.all(
              listenTo: dt.rxLoadMore,
              onWaiting: () => const CircularProgressIndicator(),
              onError: (_, __) => const Text('error'),
              onData: (_) => dt.rxIsEnd.st
                  ? const Text('... end of list ...')
                  : OutlinedButton(
                      child: const Text('load more'),
                      onPressed: () => ct.loadMore(),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
