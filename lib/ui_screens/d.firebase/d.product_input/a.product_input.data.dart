part of '_index.dart';

final x1ProductInputData = RM.inject<ProductInputData>(
  () => ProductInputData(),
  debugPrintWhenNotifiedPreMessage: 'ProductInputData',
  sideEffects: SideEffects(initState: () => x1ProductInputCtrl.init()),
);

class ProductInputData {
  final title = 'ProductInput';

  final colId = x1XproductData.st.colId;

  final listKey = GlobalKey<AnimatedListState>();

  final products = RM.inject<List<Productx>>(() => []);
}
