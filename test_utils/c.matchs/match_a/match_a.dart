part of '_index.dart';

/// Matchers that explained Page Positions
///
///
abstract class MatchA {
  /// a1 => _atHome
  static Future<void> Function(WidgetTester) get matchA1 => _matchA1;

  /// a2 => _atProductList
  static Future<void> Function(WidgetTester) get matchA2 => _matchA2;

  /// a3 => _atCart
  static Future<void> Function(WidgetTester) get mathcA3 => _matchA3;

  /// a4 => _atProductDetail
  static Future<void> Function(WidgetTester) get matchA4 => _matchA4;
}
