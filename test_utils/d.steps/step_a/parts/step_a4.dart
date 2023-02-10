part of '../_index.dart';

//* coba-dua back to coba-satu
Future<void> _stepA4(WidgetTester tester, [int? secs]) async {
  await tester.tap(Elm.cobaDua.btnBack);
  await tester.pumpAndSettleXtra();
}
