part of '_index.dart';

final x1ProductListCtrl = ProductListCtrl();

class ProductListCtrl {
  ProductListData get dt => x1ProductListData.st;

  init() => logxx.i(ProductListCtrl, '...');

  Future<void> refresh() async {
    x1ProductServ.refreshProducts();
  }

  Future<void> loadMore() async {
    x1ProductServ.readProducts();
  }

  select(String id) {
    x1ProductServ.initProduct(id);
    nav.to(Routes.productDetail);
  }
}
