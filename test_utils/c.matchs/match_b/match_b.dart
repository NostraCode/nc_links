part of '_index.dart';

/// Matchers FIND  Cart<br><br>
/// b1 => find N Products,  depends on counter 5 <br>
/// b2 => empty cart <br><br>
abstract class MatchB {
  /// b1 => _find N Products <br> use to find N widgets of product
  static Future<void> Function(WidgetTester) get matchB1 => _matchB1;

  /// b2 => _empty cart <br> use to get result of empty cart
  static Future<void> Function(WidgetTester) get matchB2 => _matchB2;

  /// b3 => _matching out cart and box decoration counter
  // static Future<void> Function(WidgetTester) get matchB3 => _matchB3;
}
