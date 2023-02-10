part of '_index.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({Key? key}) : super(key: key);

  ProductDetailCtrl get ct => Ctrl.productDetail;
  ProductDetailData get dt => Data.productDetail.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProductDetailAppbar(),
      ),
      floatingActionButton: const ProductDetailFab(),
      body: Center(
        child: OnBuilder<Product?>.all(
          listenTo: dt.rxProduct,
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
