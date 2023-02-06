part of '../_index.dart';

//* matchers finds N Product
Future<void> _matchB2(WidgetTester tester, [int? secs]) async {
  expect(Elm.prodList.cardProduct, findsNWidgets(DataProduct.counter));
  await tester.delayedAsync(secs);
}
