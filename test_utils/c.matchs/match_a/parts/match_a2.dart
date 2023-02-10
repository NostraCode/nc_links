part of '../_index.dart';

Future<void> _matchA2(WidgetTester tester, [int? secs]) async {
  expect(Elm.cobaDua.titlePage, findsOneWidget);
  expect(Elm.cobaDua.btnPlus, findsOneWidget);
  expect(Elm.cobaDua.textCounter, findsAtLeastNWidgets(1));
  expect(Elm.cobaDua.btnNext, findsOneWidget);
  expect(Elm.cobaDua.btnBack, findsOneWidget);
}
