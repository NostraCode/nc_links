part of '../_index.dart';

Future<void> _matchA1(WidgetTester tester, [int? secs]) async {
  expect(Elm.cobaSatu.titlePage, findsOneWidget);
  expect(Elm.cobaSatu.btnPlus, findsOneWidget);
  expect(Elm.cobaSatu.textCounter, findsAtLeastNWidgets(1));
  expect(Elm.cobaSatu.btnNext, findsOneWidget);
  expect(Elm.cobaSatu.btnBack, findsNothing);
}
