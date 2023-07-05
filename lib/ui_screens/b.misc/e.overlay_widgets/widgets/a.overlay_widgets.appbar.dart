part of '../_index.dart';

class OverlayWidgetsAppbar extends StatelessWidget {
  const OverlayWidgetsAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
