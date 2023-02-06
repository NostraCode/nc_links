part of '_index.dart';

class CaseB {
  /// add product single
  /// b1 => _addProductSingle
  static Future<void> Function(WidgetTester) get caseB1 => _caseB1;

  /// add product multiple
  /// b2 => _addProductMultiple
  static Future<void> Function(WidgetTester) get caseB2 => _caseB2;

  /// match out product tap with product count
  /// b3 => match out count at cart bubble
  static Future<void> Function(WidgetTester) get caseB3 => _caseB3;
}
