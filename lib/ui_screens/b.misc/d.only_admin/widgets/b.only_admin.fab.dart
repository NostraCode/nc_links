part of '../_index.dart';

class OnlyAdminFab extends StatelessWidget {
  const OnlyAdminFab({Key? key}) : super(key: key);

  OnlyAdminCtrl get ct => x1OnlyAdminCtrl;
  OnlyAdminData get dt => x1OnlyAdminData.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
