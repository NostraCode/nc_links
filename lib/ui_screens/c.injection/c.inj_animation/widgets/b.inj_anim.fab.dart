part of '../_index.dart';

class InjAnimFab extends StatelessWidget {
  const InjAnimFab({Key? key}) : super(key: key);

  InjAnimCtrl get ct => x1InjAnimCtrl;
  InjAnimData get dt => x1InjAnimData.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
