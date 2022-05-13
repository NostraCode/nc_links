part of '_index.dart';

final x1ProductDetailCtrl = ProductDetailCtrl();

class ProductDetailCtrl {
  ProductDetailData get dt => x1ProductDetailData.st;

  init() => loggerx(ProductDetailCtrl).v('init...');

  action() {}

  delete() async {
    RM.navigate.toDialog(
      const Center(child: CircularProgressIndicator()),
      barrierDismissible: false,
      barrierColor: Colors.black54,
    );
    await x1ProductServ.deleteProduct();
    RM.navigate.back();
    RM.navigate.back();
  }
}
