part of '../_index.dart';

class InjForxFab extends StatelessWidget {
  const InjForxFab({Key? key}) : super(key: key);

  InjFormCtrl get ct => x1InjFormCtrl;
  InjFormData get dt => x1InjFormData.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {},
    );
  }
}
