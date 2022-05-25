part of '../_index.dart';

class InjThemeFab extends StatelessWidget {
  const InjThemeFab({Key? key}) : super(key: key);

  InjThemeCtrl get ct => x1InjThemeCtrl;
  InjThemeData get dt => x1InjThemeData.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
