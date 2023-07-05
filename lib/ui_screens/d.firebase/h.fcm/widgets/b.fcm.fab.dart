part of '../_index.dart';

class FcmFab extends StatelessWidget {
  const FcmFab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => _ct.send(),
    );
  }
}
