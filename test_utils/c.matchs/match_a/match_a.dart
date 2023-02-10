part of '_index.dart';

/// To confirm that element exist on specified page
///
/// matchA1 => _matchA1<br>
/// matchA2 => _matchA2<br>
/// mathcA3 => _matchA3<br>
///
abstract class MatchA {
  /// <strong>matchA1 => _matchA1</strong><br><br>
  /// check element on page coba-satu
  static Future<void> Function(WidgetTester) get matchA1 => _matchA1;

  /// <strong>matchA2 => _matchA2</strong><br><br>
  /// check element on page coba-dua
  static Future<void> Function(WidgetTester) get matchA2 => _matchA2;

  /// <strong>mathcA3 => _matchA3</strong><br><br>
  /// check element on page coba-tiga
  static Future<void> Function(WidgetTester) get matchA3 => _matchA3;
}
