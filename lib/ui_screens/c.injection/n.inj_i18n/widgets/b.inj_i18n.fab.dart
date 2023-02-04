part of '../_index.dart';

class InjI18nFab extends StatelessWidget {
  const InjI18nFab({Key? key}) : super(key: key);

  InjI18nCtrl get ct => Ctrl.injI18n;
  InjI18nData get dt => Data.injI18n.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
