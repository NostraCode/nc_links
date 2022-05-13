part of '_index.dart';

final x1FbFirestoreCtrl = FbFirestoreCtrl();

class FbFirestoreCtrl {
  FbFirestoreData get dt => x1FbFirestoreData.st;

  init() {
    loggerx(FbFirestoreCtrl).v('init...');
    x1ProductServ.initProduct(Productx.init().id);
  }

  createItem() => x1ProductServ.createProduct(Productx.init());

  readItem() => x1ProductServ.readProduct();

  updateItem() => x1ProductServ.updateProduct(Productx.init());

  deleteItem() => x1ProductServ.deleteProduct();
}
