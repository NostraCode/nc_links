part of '../_index.dart';

//* coba-satu to coba-dua
Future<void> _stepA1(WidgetTester tester, [int? secs]) async {
  //* wrap all async activities with "tester.runAsync"
  //todo: "tester.pumpAndSettle()" => handle page transition (animation) with definite ending.ex:"loading" text
  //todo: "tester.pumpX(secs)" => handle page transition (animation) with infinity ending .ex:"circular progress indicator"
  //todo: "tester.delayed(secs);" => handle future delayed inside runAsync block
  //todo: "tester.delayedAsync(secs);" => handle future delayed outside runAsync block
  //todo: "await tester.pump()" => handle updated state value

  // await tester.tap(Elm.cobaSatu.btnNext);
  // await tester.runAsync(() async {
  //   await tester.pumpX();
  //   await tester.delayed();
  // });
  // await tester.pump();
  // await tester.pumpAndSettleXtra();

  await tester.tap(Elm.cobaSatu.btnNext);
  await tester.pumpAndSettleXtra();
}
