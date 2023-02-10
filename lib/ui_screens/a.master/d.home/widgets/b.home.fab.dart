part of '../_index.dart';

class HomeFab extends StatelessWidget {
  const HomeFab({Key? key}) : super(key: key);

  HomeCtrl get ct => Ctrl.home;
  HomeData get dt => Data.home.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: const Icon(Icons.add),
    );
  }
}
