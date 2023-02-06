part of '../_index.dart';

Future<void> _stepB1(WidgetTester tester, [int? secs]) async {
  expect(Elm.prodDetail.addButtonDetail, findsOneWidget);
  await tester.tap(Elm.prodDetail.addButtonDetail);
  await tester.pumpAndSettleXtra();
}
