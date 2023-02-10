part of '../_index.dart';

//* coba-tiga back to coba-dua
Future<void> _stepA3(WidgetTester tester, [int? secs]) async {
  await tester.tap(Elm.cobaDua.btnBack);
  await tester.pumpAndSettleXtra();
}
