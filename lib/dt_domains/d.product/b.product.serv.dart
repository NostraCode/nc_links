part of '_index.dart';

final x1ProductServ = ProductServ();

class ProductServ {
  ProductData get dt => x1ProductData.st;

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
    dt.rxSelectedId.refresh();
    dt.rxSelectedId.st = id;
  }

  Future<void> createProduct(Productx product) {
    return x1ProductRepo.st.createProduct(product);
  }

  readProduct() {
    dt.rxProductFuture.stateAsync = x1ProductRepo.st.readProduct();
  }

  Future<void> updateProduct(Productx product) {
    return x1ProductRepo.st.updateProduct(product);
  }

  Future<void> deleteProduct() {
    return x1ProductRepo.st.deleteProduct();
  }

  listenProduct() {
    dt.rxProductStream.initializeState();
    dt.rxProductStream.subscription = x1ProductRepo.st
        .streamProduct()
        .listen((event) => dt.rxProductStream.st = event);
  }

  // ----- ----- ----- ----- ----- ----- ----- ----- -----

  initProducts() {
    dt.rxIsFirstEvent.st = true;
    listenProducts();
    refreshProducts();
  }

  refreshProducts() {
    dt.rxIsEnd.st = false;
    dt.rxProductList.st = [];
    dt.rxSelectedId.st = '';
    readProducts();
  }

  readProducts() {
    dt.rxLoadMore.stateAsync = x1ProductRepo.st.readProducts();
  }

  addToList(List<Productx> moreProducts) {
    dt.rxProductList.st = [...dt.rxProductList.st, ...moreProducts];
    if (moreProducts.length < dt.limit) {
      dt.rxIsEnd.st = true;
    }
  }

  listenProducts() {
    dt.rxProductList.subscription = x1ProductRepo.st.streamProductsX().listen(
      (event) {
        if (event.isNotEmpty) {
          if (dt.rxIsFirstEvent.st) {
            dt.rxIsFirstEvent.st = false;
          } else {
            dt.rxProductList.st = newListProducts(event);
          }
        }
      },
    );
  }

  List<Productx> newListProducts(List<Map<String, Productx>> event) {
    var newList = [...dt.rxProductList.st];
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
