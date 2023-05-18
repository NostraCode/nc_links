part of '../_index.dart';

class NotFoundEcho extends StatelessWidget {
  const NotFoundEcho({Key? key}) : super(key: key);

  NotFoundCtrl get ct => Ctrl.notFound;
  NotFoundData get dt => Data.notFound.st;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
