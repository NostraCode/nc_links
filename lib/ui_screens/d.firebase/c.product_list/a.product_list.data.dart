part of '_index.dart';

final x1ProductListData = RM.inject<ProductListData>(
  () => ProductListData(),
  debugPrintWhenNotifiedPreMessage: '',
  sideEffects: SideEffects(initState: () => x1ProductListCtrl.init()),
);

class ProductListData {
  final title = 'ProductList';

  final limit = x1ProductData.st.limit;

  final rxIsEnd = x1ProductData.st.rxIsEnd;

  final rxSelectedId = x1ProductData.st.rxSelectedId;

  final rxProductList = x1ProductData.st.rxProductList;

  final rxLoadMore = x1ProductData.st.rxLoadMore;
}
