part of '../_index.dart';

class InjTabFab extends StatelessWidget {
  const InjTabFab({Key? key}) : super(key: key);

  InjTabCtrl get ct => x1InjTabCtrl;
  InjTabData get dt => x1InjTabData.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
