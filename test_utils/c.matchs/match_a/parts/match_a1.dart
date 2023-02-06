part of '../_index.dart';

Future<void> _matchA1(WidgetTester tester, [int? secs]) async {
  expect(Elm.home.titleHome, findsOneWidget);
  expect(Elm.home.btnGoToProductList, findsOneWidget);
}
