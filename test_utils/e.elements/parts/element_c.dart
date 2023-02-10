part of '../_index.dart';

//* CobaTiga Elements
class ElementC {
  final titlePage = find.text('CobaTiga');
  final textCounter = find.text('0');
  final btnPlus = find.widgetWithIcon(FloatingActionButton, Icons.add);
  final btnNext = find.widgetWithText(ElevatedButton, 'go to next page');
  final btnBack = find.widgetWithText(ElevatedButton, 'back');
}
