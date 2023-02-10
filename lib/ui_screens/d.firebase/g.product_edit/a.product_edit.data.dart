part of '_index.dart';

class ProductEditData {
  final title = 'ProductEdit';

  final colId = Prov.product.st.colId;

  final rxProductBackup = RM.inject<Product>(() => Product());

  final rxProductBuffer = RM.inject<Product>(
    () => Product(),
    sideEffects: SideEffects(
      initState: () => Ctrl.productEdit.initProductBuffer(),
    ),
  );
}
