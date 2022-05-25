part of '_index.dart';

final x1ProductEditData = RM.inject<ProductEditData>(
  () => ProductEditData(),
  debugPrintWhenNotifiedPreMessage: '',
  sideEffects: SideEffects(initState: () => x1ProductEditCtrl.init()),
);

class ProductEditData {
  final title = 'ProductEdit';

  final colId = x1ProductData.st.colId;

  final rxProductBackup = RM.inject<Productx>(() => Productx());

  final rxProductBuffer = RM.inject<Productx>(
    () => Productx(),
    sideEffects: SideEffects(
      initState: () => x1ProductEditCtrl.initProductBuffer(),
    ),
  );
}
