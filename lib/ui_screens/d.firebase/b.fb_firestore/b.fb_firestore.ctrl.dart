part of '_index.dart';

final x1FbFirestoreCtrl = FbFirestoreCtrl();

class FbFirestoreCtrl {
  FbFirestoreData get dt => x1FbFirestoreData.st;

  init() {
    logxx.i(FbFirestoreCtrl, '...');
    x1ProductServ.initProduct(Product.init().id);
  }

  createItem() => x1ProductServ.createProduct(Product.init());

  readItem() => x1ProductServ.readProduct();

  updateItem() => x1ProductServ.updateProduct(Product.init());

  deleteItem() => x1ProductServ.deleteProduct();
}
