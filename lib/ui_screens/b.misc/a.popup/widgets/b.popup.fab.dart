part of '../_index.dart';

class PopupFab extends StatelessWidget {
  const PopupFab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      // child: const Icon(Icons.keyboard_arrow_left),
      child: const Text('back'),
      onPressed: () => nav.back(),
    );
  }
}
