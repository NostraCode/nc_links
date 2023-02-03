part of '_index.dart';

final x1ProductEditData = RM.inject<ProductEditData>(
  () => ProductEditData(),
  debugPrintWhenNotifiedPreMessage: '',
  sideEffects: SideEffects(initState: () => x1ProductEditCtrl.init()),
);

class ProductEditData {
  final title = 'ProductEdit';

  final colId = x1ProductProv.st.colId;

  final rxProductBackup = RM.inject<Product>(() => Product());

  final rxProductBuffer = RM.inject<Product>(
    () => Product(),
    sideEffects: SideEffects(
      initState: () => x1ProductEditCtrl.initProductBuffer(),
    ),
  );
}
