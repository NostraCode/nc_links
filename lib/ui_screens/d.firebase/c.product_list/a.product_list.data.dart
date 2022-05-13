part of '_index.dart';

final x1ProductListData = RM.inject<ProductListData>(
  () => ProductListData(),
  debugPrintWhenNotifiedPreMessage: 'ProductListData',
  sideEffects: SideEffects(initState: () => x1ProductListCtrl.init()),
);

class ProductListData {
  final title = 'ProductList';

  final limit = x1ProductData.st.limit;

  final rmIsEnd = x1ProductData.st.rmIsEnd;

  final rmSelectedId = x1ProductData.st.rmSelectedId;

  final rmProductList = x1ProductData.st.rmProductList;

  final rmLoadMore = x1ProductData.st.rmLoadMore;
}
