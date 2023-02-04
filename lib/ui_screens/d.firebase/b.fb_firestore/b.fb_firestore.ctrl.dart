part of '_index.dart';

class FbFirestoreCtrl {
  FbFirestoreData get dt => Data.fbFirestore.st;

  init() {
    logxx.i(FbFirestoreCtrl, '...');
    Serv.product.initProduct(Product.init().id);
  }

  createItem() => Serv.product.createProduct(Product.init());

  readItem() => Serv.product.readProduct();

  updateItem() => Serv.product.updateProduct(Product.init());

  deleteItem() => Serv.product.deleteProduct();
}
