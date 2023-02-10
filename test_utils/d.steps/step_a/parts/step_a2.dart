part of '../_index.dart';

//* coba-dua to coba-tiga
Future<void> _stepA2(WidgetTester tester, [int? secs]) async {
  await tester.tap(Elm.cobaDua.btnNext);
  await tester.pumpAndSettleXtra();
}
