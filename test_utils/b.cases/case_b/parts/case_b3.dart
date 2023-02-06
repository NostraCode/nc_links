part of '../_index.dart';

Future<void> _caseB3(WidgetTester tester, [int? secs]) async {
  await MatchA.matchA1(tester);
  await StepA.stepA1(tester);

  for (var i = 0; i < DataProduct.counter; i++) {
    await MatchA.matchA2(tester);
    await StepA.stepA3(tester);
    await MatchA.matchA4(tester);
    await StepB.stepB1(tester); //* add product
    await MatchA.matchA2(tester);
    expect(Elm.prodList.notifCard, findsAtLeastNWidgets(i)); //todo: how to transfer i value
  }

  // await StepA.stepA2(tester);
  // await MatchA.mathcA3(tester);
  // await MatchB.matchB2(tester); //*check total items in cart

  //* just try to additional steps :)
  // final totalItemOnCart = tester.widgetList(cardProduct).length;
  // tester.printToConsole(totalItemOnCart.toString());
}
