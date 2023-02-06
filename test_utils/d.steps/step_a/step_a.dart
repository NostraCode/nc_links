part of '_index.dart';

/// scan all pages<br>
/// a1 => _fromHomeToProductList<br>
/// a2 => _fromProductListToCart<br>
/// a3 => _fromProductListToDetail<br>

class StepA {
  /// <strong>a1 => _stepA1</strong><br><br>tap "go to produc-list" button then pump to "product-list" page.
  static Future<void> Function(WidgetTester) get stepA1 => _stepA1;

  /// a2 => _fromProductListToCart<br>
  /// <strong>a2 => _stepA2</strong><br><br>tap "from produc-list" then pump to "cart" page. by tapping on the Cart Icon
  static Future<void> Function(WidgetTester) get stepA2 => _stepA2;

  /// a3 => _fromProductListToDetail<br>
  /// <strong>a1 => _stepA3</strong><br><br>tap "from produc-list" card then pump to "product-detail" page.
  static Future<void> Function(WidgetTester) get stepA3 => _stepA3;
}
