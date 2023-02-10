import 'package:flutter_test/flutter_test.dart';

import '../test_utils/_index.dart';

void main() {
  Helper.configTest();
  group('[a: initialization]', () {
    testWidgets('a1: at "coba-satu"', (tester) async => await FeatA.featA1(tester));
    testWidgets('a2: "coba-satu" push to "coba-dua" then back', (tester) async => await FeatA.featA2(tester));
    testWidgets('a3: "coba-satu" push to "coba-tiga" then back', (tester) async => await FeatA.featA3(tester));
  });
}
