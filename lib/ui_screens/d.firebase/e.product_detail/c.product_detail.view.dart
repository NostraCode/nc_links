part of '_index.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({Key? key}) : super(key: key);

  ProductDetailCtrl get ct => x1ProductDetailCtrl;
  ProductDetailData get dt => x1ProductDetailData.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProductDetailAppbar(),
      ),
      floatingActionButton: const ProductDetailFab(),
      body: Center(
        child: OnBuilder<Productx?>.all(
          listenTo: dt.rmProduct,
          onWaiting: () => const CircularProgressIndicator(),
          onError: (_, __) => const Text('error'),
          onData: (data) => data == null
              ? const Text('null')
              : Column(
                  children: [
                    ProductDetailInfos(product: data),
                    ProductDetailImages(product: data),
                  ],
                ),
        ),
      ),
    );
  }
}
