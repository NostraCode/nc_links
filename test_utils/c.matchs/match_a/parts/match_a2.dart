part of '../_index.dart';

Future<void> _matchA2(WidgetTester tester, [int? secs]) async {
  expect(Elm.prodList.titleProductList, findsOneWidget);
  expect(Elm.prodList.btnCart, findsOneWidget);
  expect(Elm.prodList.cardProduct, findsOneWidget);
  expect(Elm.prodList.loadingIndicator, findsNothing);
}
