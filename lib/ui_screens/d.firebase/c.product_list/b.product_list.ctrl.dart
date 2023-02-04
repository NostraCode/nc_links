part of '_index.dart';

class ProductListCtrl {
  ProductListData get dt => Data.productList.st;

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
