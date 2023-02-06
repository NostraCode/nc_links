part of '../_index.dart';

//* Home to Product List
Future<void> _stepA1(WidgetTester tester, [int? secs]) async {
  expect(Elm.home.btnGoToProductList, findsOneWidget);

  await tester.tap(Elm.home.btnGoToProductList);

  //* wrap all async activities with "tester.runAsync"
  //todo: "tester.pumpAndSettle()" => handle page transition (animation) with definite ending.ex:"loading" text
  //todo: "tester.pumpX(secs)" => handle page transition (animation) with infinity ending .ex:"circular progress indicator"
  //todo: "tester.delayed(secs);" => handle future delayed inside runAsync block
  //todo: "tester.delayedAsync(secs);" => handle future delayed outside runAsync block
  //todo: "await tester.pump()" => handle updated state value

  await tester.runAsync(() async {
    await tester.pumpX();
    await tester.delayed();
  });
  await tester.pump();
  await tester.pumpAndSettleXtra();
}
