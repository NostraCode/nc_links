part of '../_index.dart';

class InjPersistFab extends StatelessWidget {
  const InjPersistFab({Key? key}) : super(key: key);

  InjPersistCtrl get ct => Ctrl.injPersist;
  InjPersistData get dt => Data.injPersist.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
