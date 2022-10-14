part of '../_index.dart';

class InjStateFab extends StatelessWidget {
  const InjStateFab({Key? key}) : super(key: key);

  InjStateCtrl get ct => x1InjStateCtrl;
  InjStateData get dt => x1InjStateData.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {},
    );
  }
}
