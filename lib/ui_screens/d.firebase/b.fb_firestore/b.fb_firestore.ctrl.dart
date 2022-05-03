part of '_index.dart';

final x1FbFirestoreCtrl = FbFirestoreCtrl();

class FbFirestoreCtrl {
  FbFirestoreData get dt => x1FbFirestoreData.st;

  init() {
    loggerx(FbFirestoreCtrl).v('init...');
    x1XproductServ.initProduct(Productx.init().id);
  }

  createItem() => x1XproductServ.createProduct(Productx.init());

  readItem() => x1XproductServ.readProduct();

  updateItem() => x1XproductServ.updateProduct(Productx.init());

  deleteItem() => x1XproductServ.deleteProduct();
}
