part of '_index.dart';

/// featureB : add product to cart
class FeatB {
  /// add product single
  static Future<void> featB1(WidgetTester tester) async {
    await Helper.starterSteps(tester);
    // todo: insert steps...
    await CaseB.caseB1(tester);
  }

  /// add product multiple
  static Future<void> featB2(WidgetTester tester) async {
    await Helper.starterSteps(tester);
    // todo: insert steps...
    await CaseB.caseB2(tester);
  }

  /// matching out product cart and product count
  static Future<void> featB3(WidgetTester tester) async {
    await Helper.starterSteps(tester);
    // todo: insert steps...
    await CaseB.caseB3(tester);
  }
}
