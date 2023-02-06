import 'package:flutter_test/flutter_test.dart';

import '../test_utils/_index.dart';

void main() {
  Helper.configTest();
  group('[a: initialization]', () {
    testWidgets('a1: at home', (tester) async => await FeatA.featA1(tester));
    testWidgets('a2: home to product-list', (tester) async => await FeatA.featA2(tester));
    testWidgets('a3: product-list to cart', (tester) async => await FeatA.featA3(tester));
    testWidgets('a4: product-list to product-detail', (tester) async => await FeatA.featA4(tester));
  });
  group('[b: add product]', () {
    testWidgets('b1: single', (tester) async => await FeatB.featB1(tester));
    testWidgets('b2: multiple', (tester) async => await FeatB.featB1(tester));
    testWidgets('3: matching out counter', (tester) async => await FeatB.featB3(tester));
  });
}
