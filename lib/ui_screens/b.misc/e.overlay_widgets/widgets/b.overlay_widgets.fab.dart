part of '../_index.dart';

class OverlayWidgetsFab extends StatelessWidget {
  const OverlayWidgetsFab({Key? key}) : super(key: key);

  OverlayWidgetsCtrl get ct => Ctrl.overlayWidget;
  OverlayWidgetsData get dt => Data.overlayWidget.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
