part of '../_index.dart';

class AppCheckFab extends StatelessWidget {
  const AppCheckFab({Key? key}) : super(key: key);

  AppCheckCtrl get ct => Ctrl.appCheck;
  AppCheckData get dt => Data.appCheck.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
