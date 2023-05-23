part of '../_index.dart';

class CobaFab extends StatelessWidget {
  const CobaFab({Key? key}) : super(key: key);

  CobaCtrl get ct => Ctrl.coba;
  CobaData get dt => Data.coba.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
