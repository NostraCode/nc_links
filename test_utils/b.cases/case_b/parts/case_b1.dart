part of '../_index.dart';

Future<void> _caseB1(WidgetTester tester, [int? secs]) async {
  await MatchA.matchA1(tester);
  await StepA.stepA1(tester);
  await MatchA.matchA2(tester);
  await StepA.stepA3(tester);
  await MatchA.matchA4(tester);
  await StepB.stepB1(tester); //* add product
  await MatchA.matchA2(tester);
  await StepA.stepA2(tester);
  await MatchA.mathcA3(tester);
  await MatchB.matchB1(tester);

  await MatchB.matchB1(tester); //* check total items in cart
}
