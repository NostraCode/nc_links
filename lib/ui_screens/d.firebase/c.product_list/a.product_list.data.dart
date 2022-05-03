part of '_index.dart';

final x1ProductListData = RM.inject<ProductListData>(
  () => ProductListData(),
  debugPrintWhenNotifiedPreMessage: 'ProductListData',
  sideEffects: SideEffects(initState: () => x1ProductListCtrl.init()),
);

class ProductListData {
  final title = 'ProductList';

  final limit = x1XproductData.st.limit;

  final rmIsEnd = x1XproductData.st.rmIsEnd;

  final rmSelectedId = x1XproductData.st.rmSelectedId;

  final rmProductList = x1XproductData.st.rmProductList;

  final rmLoadMore = x1XproductData.st.rmLoadMore;
}
