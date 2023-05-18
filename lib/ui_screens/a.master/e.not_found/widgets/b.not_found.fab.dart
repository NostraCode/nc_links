part of '../_index.dart';

class NotFoundFab extends StatelessWidget {
  const NotFoundFab({Key? key}) : super(key: key);

  NotFoundCtrl get ct => Ctrl.notFound;
  NotFoundData get dt => Data.notFound.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
