part of '_index.dart';

class ProductServ {
  ProductProv get pv => Prov.product.st;

  init() => logxx.i(ProductServ, '...');

  // ----- ----- ----- ----- ----- ----- ----- ----- -----

  // setAppCheck() async {
  //   await dt.appCheck.activate();
  //   logxx.(ProductxService).wtf('activated!!');
  //   await dt.appCheck.setTokenAutoRefreshEnabled(true);
  //   final token = await dt.appCheck.getToken(true);
  //   logxx.(ProductxService).wtf('your token: $token');
  // }

  // ----- ----- ----- ----- ----- ----- ----- ----- -----

  initProduct(String id) {
    pv.rxSelectedId.refresh();
    pv.rxSelectedId.st = id;
  }

  Future<void> createProduct(Product product) {
    return Repo.product.st.createProduct(product);
  }

  readProduct() {
    pv.rxProductFuture.stateAsync = Repo.product.st.readProduct();
  }

  Future<void> updateProduct(Product product) {
    return Repo.product.st.updateProduct(product);
  }

  Future<void> deleteProduct() {
    return Repo.product.st.deleteProduct();
  }

  listenProduct() {
    pv.rxProductStream.initializeState();
    pv.rxProductStream.subscription = Repo.product.st.streamProduct().listen((event) => pv.rxProductStream.st = event);
  }

  // ----- ----- ----- ----- ----- ----- ----- ----- -----

  initProducts() {
    pv.rxIsFirstEvent.st = true;
    listenProducts();
    refreshProducts();
  }

  refreshProducts() {
    pv.rxIsEnd.st = false;
    pv.rxProductList.st = [];
    pv.rxSelectedId.st = '';
    readProducts();
  }

  readProducts() {
    pv.rxLoadMore.stateAsync = Repo.product.st.readProducts();
  }

  addToList(List<Product> moreProducts) {
    pv.rxProductList.st = [...pv.rxProductList.st, ...moreProducts];
    if (moreProducts.length < pv.limit) {
      pv.rxIsEnd.st = true;
    }
  }

  listenProducts() {
    pv.rxProductList.subscription = Repo.product.st.streamProductsX().listen(
      (event) {
        if (event.isNotEmpty) {
          if (pv.rxIsFirstEvent.st) {
            pv.rxIsFirstEvent.st = false;
          } else {
            pv.rxProductList.st = newListProducts(event);
          }
        }
      },
    );
  }

  List<Product> newListProducts(List<Map<String, Product>> event) {
    var newList = [...pv.rxProductList.st];
    for (var map in event) {
      final changeType = map.entries.first.key;
      final product = map.entries.first.value;
      final i = newList.indexWhere((e) => e.id == product.id);

      if (changeType == 'modified') {
        logxx.i(ProductServ, 'modified => ${product.name}');
        newList[i] = product;
      } else if (changeType == 'removed') {
        logxx.i(ProductServ, 'removed => ${product.name}');
        newList.removeAt(i);
      } else if (changeType == 'added') {
        logxx.i(ProductServ, 'added => ${product.name}');
        newList.insert(0, product);
      }
    }
    return newList;
  }

  // ----- ----- ----- ----- ----- ----- ----- ----- -----

  // Stream<Product?> streamProduct() {
  //   return productRepo.st.streamProduct();
  // }

  // Stream<List<Product>> streamProducts() {
  //   return productRepo.st.streamProducts();
  // }
}
