part of '_index.dart';

final x1XproductServ = XproductServ();

class XproductServ {
  XproductData get dt => x1XproductData.st;

  init() => loggerx(XproductServ).v('init...');

  // ----- ----- ----- ----- ----- ----- ----- ----- -----

  // setAppCheck() async {
  //   await dt.appCheck.activate();
  //   loggerx(ProductxService).wtf('activated!!');
  //   await dt.appCheck.setTokenAutoRefreshEnabled(true);
  //   final token = await dt.appCheck.getToken(true);
  //   loggerx(ProductxService).wtf('your token: $token');
  // }

  // ----- ----- ----- ----- ----- ----- ----- ----- -----

  initProduct(String id) {
    dt.rmSelectedId.refresh();
    dt.rmSelectedId.st = id;
  }

  Future<void> createProduct(Productx product) {
    return x1ProductRepo.st.createProduct(product);
  }

  readProduct() {
    dt.rmProductFuture.stateAsync = x1ProductRepo.st.readProduct();
  }

  Future<void> updateProduct(Productx product) {
    return x1ProductRepo.st.updateProduct(product);
  }

  Future<void> deleteProduct() {
    return x1ProductRepo.st.deleteProduct();
  }

  listenProduct() {
    dt.rmProductStream.initializeState();
    dt.rmProductStream.subscription = x1ProductRepo.st
        .streamProduct()
        .listen((event) => dt.rmProductStream.st = event);
  }

  // ----- ----- ----- ----- ----- ----- ----- ----- -----

  initProducts() {
    dt.rmIsFirstEvent.st = true;
    listenProducts();
    refreshProducts();
  }

  refreshProducts() {
    dt.rmIsEnd.st = false;
    dt.rmProductList.st = [];
    dt.rmSelectedId.st = '';
    readProducts();
  }

  readProducts() {
    dt.rmLoadMore.stateAsync = x1ProductRepo.st.readProducts();
  }

  addToList(List<Productx> moreProducts) {
    dt.rmProductList.st = [...dt.rmProductList.st, ...moreProducts];
    if (moreProducts.length < dt.limit) {
      dt.rmIsEnd.st = true;
    }
  }

  listenProducts() {
    dt.rmProductList.subscription = x1ProductRepo.st.streamProductsX().listen(
      (event) {
        if (event.isNotEmpty) {
          if (dt.rmIsFirstEvent.st) {
            dt.rmIsFirstEvent.st = false;
          } else {
            dt.rmProductList.st = newListProducts(event);
          }
        }
      },
    );
  }

  List<Productx> newListProducts(List<Map<String, Productx>> event) {
    var newList = [...dt.rmProductList.st];
    for (var map in event) {
      final changeType = map.entries.first.key;
      final product = map.entries.first.value;
      final i = newList.indexWhere((e) => e.id == product.id);

      if (changeType == 'modified') {
        loggerx(XproductServ).i('modified => ${product.name}');
        newList[i] = product;
      } else if (changeType == 'removed') {
        loggerx(XproductServ).i('removed => ${product.name}');
        newList.removeAt(i);
      } else if (changeType == 'added') {
        loggerx(XproductServ).i('added => ${product.name}');
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
