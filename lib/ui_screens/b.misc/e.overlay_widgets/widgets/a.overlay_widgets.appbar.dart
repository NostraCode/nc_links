part of '../_index.dart';

class OverlayWidgetsAppbar extends StatelessWidget {
  const OverlayWidgetsAppbar({Key? key}) : super(key: key);

  OverlayWidgetsCtrl get ct => Ctrl.overlayWidget;
  OverlayWidgetsData get dt => Data.overlayWidget.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
    );
  }
}
