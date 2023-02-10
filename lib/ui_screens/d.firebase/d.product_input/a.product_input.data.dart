part of '_index.dart';

class ProductInputData {
  final title = 'ProductInput';

  final colId = Prov.product.st.colId;

  final listKey = GlobalKey<AnimatedListState>();

  final products = RM.inject<List<Product>>(() => []);
}
