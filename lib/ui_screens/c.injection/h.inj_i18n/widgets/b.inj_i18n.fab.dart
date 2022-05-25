part of '../_index.dart';

class InjI18nFab extends StatelessWidget {
  const InjI18nFab({Key? key}) : super(key: key);

  InjI18nCtrl get ct => x1InjI18nCtrl;
  InjI18nData get dt => x1InjI18nData.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
