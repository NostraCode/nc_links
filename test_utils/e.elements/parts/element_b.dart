part of '../_index.dart';

//* CobaDua Elements
class ElementB {
  final titlePage = find.text('CobaDua');
  final textCounter = find.text('0');
  final btnPlus = find.widgetWithIcon(FloatingActionButton, Icons.add);
  final btnNext = find.widgetWithText(ElevatedButton, 'go to next page');
  final btnBack = find.widgetWithText(ElevatedButton, 'back');
}
