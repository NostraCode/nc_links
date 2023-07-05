part of '_index.dart';

class ProductServ {
  init() => logxx.i(ProductServ, '...');

  // ----- ----- ----- ----- ----- ----- ----- ----- -----

  // setAppCheck() async {
  //   await _dt.appCheck.activate();
  //   logxx.(ProductxService).wtf('activated!!');
  //   await _dt.appCheck.setTokenAutoRefreshEnabled(true);
  //   final token = await _dt.appCheck.getToken(true);
  //   logxx.(ProductxService).wtf('your token: $token');
  // }

  // ----- ----- ----- ----- ----- ----- ----- ----- -----

  initProduct(String id) {
    _pv.rxSelectedId.refresh();
    _pv.rxSelectedId.st = id;
  }

  Future<void> createProduct(Product product) {
    return Repo.product.st.createProduct(product);
  }

  readProduct() {
    _pv.rxProductFuture.stateAsync = Repo.product.st.readProduct();
  }

  Future<void> updateProduct(Product product) {
    return Repo.product.st.updateProduct(product);
  }

  Future<void> deleteProduct() {
    return Repo.product.st.deleteProduct();
  }

  listenProduct() {
    _pv.rxProductStream.initializeState();
    _pv.rxProductStream.subscription =
        Repo.product.st.streamProduct().listen((event) => _pv.rxProductStream.st = event);
  }

  // ----- ----- ----- ----- ----- ----- ----- ----- -----

  initProducts() {
    _pv.rxIsFirstEvent.st = true;
    listenProducts();
    refreshProducts();
  }

  refreshProducts() {
    _pv.rxIsEnd.st = false;
    _pv.rxProductList.st = [];
    _pv.rxSelectedId.st = '';
    readProducts();
  }

  readProducts() {
    _pv.rxLoadMore.stateAsync = Repo.product.st.readProducts();
  }

  addToList(List<Product> moreProducts) {
    _pv.rxProductList.st = [..._pv.rxProductList.st, ...moreProducts];
    if (moreProducts.length < _pv.limit) {
      _pv.rxIsEnd.st = true;
    }
  }

  listenProducts() {
    _pv.rxProductList.subscription = Repo.product.st.streamProductsX().listen(
      (event) {
        if (event.isNotEmpty) {
          if (_pv.rxIsFirstEvent.st) {
            _pv.rxIsFirstEvent.st = false;
          } else {
            _pv.rxProductList.st = newListProducts(event);
          }
        }
      },
    );
  }

  List<Product> newListProducts(List<Map<String, Product>> event) {
    var newList = [..._pv.rxProductList.st];
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
