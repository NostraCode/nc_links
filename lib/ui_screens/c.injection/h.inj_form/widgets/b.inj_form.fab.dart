part of '../_index.dart';

class InjForxFab extends StatelessWidget {
  const InjForxFab({Key? key}) : super(key: key);

  InjFormCtrl get ct => Ctrl.injForm;
  InjFormData get dt => Data.injForm.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {},
    );
  }
}
