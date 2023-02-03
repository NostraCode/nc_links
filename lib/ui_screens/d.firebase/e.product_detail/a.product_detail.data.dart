part of '_index.dart';

final x1ProductDetailData = RM.inject<ProductDetailData>(
  () => ProductDetailData(),
  debugPrintWhenNotifiedPreMessage: '',
  sideEffects: SideEffects(initState: () => x1ProductDetailCtrl.init()),
);

class ProductDetailData {
  final title = 'ProductDetail';

  final rxProduct = x1ProductProv.st.rxProductFuture;
}
