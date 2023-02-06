part of '../_index.dart';

//* Product List To Detail
Future<void> _stepA3(WidgetTester tester, [int? secs]) async {
  // final cardProduct = find.widgetWithText(Card, DataProduct.productName);

  expect(Elm.prodList.cardProduct, findsOneWidget);

  await tester.tap(Elm.prodList.cardProduct);

  //* wrap all async activities with "tester.runAsync"
  //todo: "tester.pumpAndSettle()" => handle page transition (animation) with definite ending.ex:"loading" text
  //todo: "tester.pumpX(secs)" => handle page transition (animation) with infinity ending .ex:"circular progress indicator"
  //todo: "tester.delayed(secs);" => handle future delayed inside runAsync block
  //todo: "tester.delayedAsync(secs);" => handle future delayed outside runAsync block
  //todo: "await tester.pump()" => handle updated state value

  await tester.runAsync(() async {
    await tester.pumpX();
    // await tester.delayed();
  });
  await tester.pump();
  await tester.pumpAndSettleXtra();
}
