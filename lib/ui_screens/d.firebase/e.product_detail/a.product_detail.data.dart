part of '_index.dart';

final x1ProductDetailData = RM.inject<ProductDetailData>(
  () => ProductDetailData(),
  debugPrintWhenNotifiedPreMessage: 'ProductDetailData',
  sideEffects: SideEffects(initState: () => x1ProductDetailCtrl.init()),
);

class ProductDetailData {
  final title = 'ProductDetail';

  final rmProduct = x1ProductData.st.rmProductFuture;
}
