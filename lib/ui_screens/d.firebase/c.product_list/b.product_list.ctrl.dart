part of '_index.dart';

class ProductListCtrl {
  init() => logxx.i(ProductListCtrl, '...');

  Future<void> refresh() async {
    Serv.product.refreshProducts();
  }

  Future<void> loadMore() async {
    Serv.product.readProducts();
  }

  select(String id) {
    Serv.product.initProduct(id);
    nav.to(Routes.productDetail);
  }
}
