part of '../_index.dart';

//* matchers empty cart
Future<void> _matchB1(WidgetTester tester, [int? secs]) async {
  expect(Elm.prodList.cardProduct, findsOneWidget);
}
