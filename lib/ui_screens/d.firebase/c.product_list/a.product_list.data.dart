part of '_index.dart';

final x1ProductListData = RM.inject<ProductListData>(
  () => ProductListData(),
  debugPrintWhenNotifiedPreMessage: '',
  sideEffects: SideEffects(initState: () => x1ProductListCtrl.init()),
);

class ProductListData {
  final title = 'ProductList';

  final limit = x1ProductProv.st.limit;

  final rxIsEnd = x1ProductProv.st.rxIsEnd;

  final rxSelectedId = x1ProductProv.st.rxSelectedId;

  final rxProductList = x1ProductProv.st.rxProductList;

  final rxLoadMore = x1ProductProv.st.rxLoadMore;
}
