part of '_index.dart';

class CaseA {
  /// caseA1 => _caseA1
  /// show cobaSatu
  static Future<void> Function(WidgetTester) get caseA1 => _caseA1;

  /// caseA2 => _caseA2
  /// cobaSatu to cobaDua
  static Future<void> Function(WidgetTester) get caseA2 => _caseA2;

  /// caseA3 => _caseA3
  /// cobaSatu to cobaDua to cobaTiga
  static Future<void> Function(WidgetTester) get caseA3 => _caseA3;
}
