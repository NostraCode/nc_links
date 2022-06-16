part of '../_index.dart';

class OverlayWidgetsAppbar extends StatelessWidget {
  const OverlayWidgetsAppbar({Key? key}) : super(key: key);

  OverlayWidgetsCtrl get ct => x1OverlayWidgetsCtrl;
  OverlayWidgetsData get dt => x1OverlayWidgetsData.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
    );
  }
}
