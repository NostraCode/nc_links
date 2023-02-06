part of '_index.dart';

class CaseA {
  /// a1 => _a1
  /// Home
  static Future<void> Function(WidgetTester) get caseA1 => _caseA1;

  /// a2 => _a2
  /// to ProductList
  static Future<void> Function(WidgetTester) get caseA2 => _caseA2;

  /// a3 => _a3
  /// Product List to Cart
  static Future<void> Function(WidgetTester) get caseA3 => _caseA3;

  /// a4 => _a4
  /// Product List to Product Detail
  static Future<void> Function(WidgetTester) get caseA4 => _caseA4;
}
