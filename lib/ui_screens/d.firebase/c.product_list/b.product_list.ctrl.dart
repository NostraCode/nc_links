part of '_index.dart';

final x1ProductListCtrl = ProductListCtrl();

class ProductListCtrl {
  ProductListData get dt => x1ProductListData.st;

  init() => loggerx(ProductListCtrl).v('init...');

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
