part of '_index.dart';

class ProductDetailCtrl {
  init() => logxx.i(ProductDetailCtrl, '...');

  action() {}

  delete() async {
    RM.navigate.toDialog(
      const Center(child: CircularProgressIndicator()),
      barrierDismissible: false,
      barrierColor: Colors.black54,
    );
    await Serv.product.deleteProduct();
    RM.navigate.back();
    RM.navigate.back();
  }
}
