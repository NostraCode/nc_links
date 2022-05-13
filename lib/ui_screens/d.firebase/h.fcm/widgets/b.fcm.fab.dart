part of '../_index.dart';

class FcmFab extends StatelessWidget {
  const FcmFab({Key? key}) : super(key: key);

  FcmCtrl get ct => x1FcmCtrl;
  FcmData get dt => x1FcmData.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.send(),
    );
  }
}
