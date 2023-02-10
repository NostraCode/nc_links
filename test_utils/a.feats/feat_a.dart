part of '_index.dart';

/// featureA : check all pages
class FeatA {
  static Future<void> featA1(WidgetTester tester) async {
    await Helper.starterSteps(tester);
    // todo: insert steps...
    await CaseA.caseA1(tester);
  }

  static Future<void> featA2(WidgetTester tester) async {
    await Helper.starterSteps(tester);
    // todo: insert steps...
    await CaseA.caseA2(tester);
  }

  static Future<void> featA3(WidgetTester tester) async {
    await Helper.starterSteps(tester);
    // todo: insert steps...
    await CaseA.caseA3(tester);
  }
}
