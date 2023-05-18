part of '../_index.dart';

class NotFoundDelta extends StatelessWidget {
  const NotFoundDelta({Key? key}) : super(key: key);

  NotFoundCtrl get ct => Ctrl.notFound;
  NotFoundData get dt => Data.notFound.st;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
