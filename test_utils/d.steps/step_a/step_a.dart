part of '_index.dart';

/// movement between pages<br>
///
/// stepA1 => _stepA1<br>
/// stepA2 => _stepA2<br>
/// stepA3 => _stepA3<br>
/// stepA4 => _stepA4<br>
///
class StepA {
  /// <strong>stepA1 => _stepA1</strong><br><br>
  /// from page coba-satu to page coba-dua
  static Future<void> Function(WidgetTester) get stepA1 => _stepA1;

  /// <strong>stepA2 => _stepA2</strong><br><br>
  /// from page coba-dua to page coba-tiga
  static Future<void> Function(WidgetTester) get stepA2 => _stepA2;

  /// <strong>stepA3 => _stepA3</strong><br><br>
  /// from page coba-tiga back to page coba-dua
  static Future<void> Function(WidgetTester) get stepA3 => _stepA3;

  /// <strong>stepA4 => _stepA4</strong><br><br>
  /// from page coba-dua back to page coba-satu
  static Future<void> Function(WidgetTester) get stepA4 => _stepA4;
}
