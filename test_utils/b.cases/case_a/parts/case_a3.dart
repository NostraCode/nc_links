part of '../_index.dart';

Future<void> _caseA3(WidgetTester tester, [int? secs]) async {
  await MatchA.matchA1(tester);
  await StepA.stepA1(tester);
  await MatchA.matchA2(tester);
  await StepA.stepA2(tester);
  await MatchA.matchA3(tester);
  await StepA.stepA3(tester);
  await MatchA.matchA2(tester);
  await StepA.stepA4(tester);
  await MatchA.matchA1(tester);
}
