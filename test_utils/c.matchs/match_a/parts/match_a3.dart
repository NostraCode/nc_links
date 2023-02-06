part of '../_index.dart';

Future<void> _matchA3(WidgetTester tester, [int? secs]) async {
  expect(Elm.cart.titleMyOrder, findsOneWidget);
}
