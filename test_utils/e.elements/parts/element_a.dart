part of '../_index.dart';

//* CobaSatu Elements
class ElementA {
  final titlePage = find.text('CobaSatu');
  final textCounter = find.text('0');
  final btnPlus = find.widgetWithIcon(FloatingActionButton, Icons.add);
  final btnNext = find.widgetWithText(ElevatedButton, 'go to next page');
  final btnBack = find.widgetWithText(ElevatedButton, 'back');
}
