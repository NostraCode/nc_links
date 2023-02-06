part of '../_index.dart';

//* Product List Elements
class ElementB {
  final titleProductList = find.text('ProductList');
  final cardProduct = find.widgetWithText(Card, DataProduct.productName);
  final loadingIndicator = find.byType(CircularProgressIndicator);
  final btnCart = find.widgetWithIcon(IconButton, Icons.shopping_cart_rounded);
  final notifCard = find.byType(Stack);
}
