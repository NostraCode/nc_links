part of '../_index.dart';

class InjStateFab extends StatelessWidget {
  const InjStateFab({Key? key}) : super(key: key);

  InjStateCtrl get ct => Ctrl.injState;
  InjStateData get dt => Data.injState.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {},
    );
  }
}
