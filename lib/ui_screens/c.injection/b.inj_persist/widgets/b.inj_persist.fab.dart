part of '../_index.dart';

class InjPersistFab extends StatelessWidget {
  const InjPersistFab({Key? key}) : super(key: key);

  InjPersistCtrl get ct => x1InjPersistCtrl;
  InjPersistData get dt => x1InjPersistData.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
