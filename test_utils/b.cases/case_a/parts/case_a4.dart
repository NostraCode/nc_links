part of '../_index.dart';

Future<void> _caseA4(WidgetTester tester, [int? secs]) async {
  await MatchA.matchA1(tester);
  await StepA.stepA1(tester);
  await MatchA.matchA2(tester);
  await StepA.stepA3(tester);
  await MatchA.matchA4(tester);
}
