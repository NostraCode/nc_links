part of '../_index.dart';

//* Product List to Cart
Future<void> _stepA2(WidgetTester tester, [int? secs]) async {
  // final btnCart = find.widgetWithIcon(IconButton, Icons.shopping_cart_rounded);

  expect(Elm.prodList.btnCart, findsOneWidget);

  await tester.tap(Elm.prodList.btnCart);
  await tester.pumpAndSettleXtra();
}
