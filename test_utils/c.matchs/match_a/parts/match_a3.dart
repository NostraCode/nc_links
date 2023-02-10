part of '../_index.dart';

Future<void> _matchA3(WidgetTester tester, [int? secs]) async {
  expect(Elm.cobaTiga.titlePage, findsOneWidget);
  expect(Elm.cobaTiga.btnPlus, findsOneWidget);
  expect(Elm.cobaTiga.textCounter, findsAtLeastNWidgets(1));
  expect(Elm.cobaTiga.btnNext, findsNothing);
  expect(Elm.cobaTiga.btnBack, findsOneWidget);
}
