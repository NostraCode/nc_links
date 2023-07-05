part of '../_index.dart';

class InjI18nFab extends StatelessWidget {
  const InjI18nFab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => _ct.action(),
    );
  }
}
