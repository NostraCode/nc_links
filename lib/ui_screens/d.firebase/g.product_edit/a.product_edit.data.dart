part of '_index.dart';

final x1ProductEditData = RM.inject<ProductEditData>(
  () => ProductEditData(),
  debugPrintWhenNotifiedPreMessage: 'ProductEditData',
  sideEffects: SideEffects(initState: () => x1ProductEditCtrl.init()),
);

class ProductEditData {
  final title = 'ProductEdit';

  final colId = x1XproductData.st.colId;

  final rmProductBackup = RM.inject<Productx>(() => Productx());

  final rmProductBuffer = RM.inject<Productx>(
    () => Productx(),
    sideEffects: SideEffects(
      initState: () => x1ProductEditCtrl.initProductBuffer(),
    ),
  );
}
