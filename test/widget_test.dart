// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';

// void main() {
//   setUp(() {
//     Mocks.inject();
//   });
//   testWidgets('Counter increments smoke test', (WidgetTester tester) async {
//     await tester.pumpWidget(const App());
//     await tester.pumpAndSettle();

//     expect(find.text('0'), findsOneWidget);

//     await tester.tap(find.widgetWithText(ElevatedButton, 'future increase'));
//     await tester.pumpAndSettle();
//     expect(find.text('0'), findsNothing);
//     expect(find.text('1'), findsOneWidget);

//     await tester.tap(find.widgetWithText(ElevatedButton, 'refresh'));
//     await tester.pumpAndSettle();
//     expect(find.text('1'), findsNothing);
//     expect(find.text('0'), findsOneWidget);

//     await tester.tap(find.widgetWithText(ElevatedButton, 'future random'));
//     await tester.pumpAndSettle();
//     expect(find.text('0'), findsNothing);
//     expect(find.text('234'), findsOneWidget);
//   });
// }
