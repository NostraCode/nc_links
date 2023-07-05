part of '../_index.dart';

class OverlayWidgetsFab extends StatelessWidget {
  const OverlayWidgetsFab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => _ct.action(),
    );
  }
}
