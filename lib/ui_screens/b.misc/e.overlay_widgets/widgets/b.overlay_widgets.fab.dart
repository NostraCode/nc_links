part of '../_index.dart';

class OverlayWidgetsFab extends StatelessWidget {
  const OverlayWidgetsFab({Key? key}) : super(key: key);

  OverlayWidgetsCtrl get ct => x1OverlayWidgetsCtrl;
  OverlayWidgetsData get dt => x1OverlayWidgetsData.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
