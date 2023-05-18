part of '../_index.dart';

class NotFoundAppbar extends StatelessWidget {
  const NotFoundAppbar({Key? key}) : super(key: key);

  NotFoundCtrl get ct => Ctrl.notFound;
  NotFoundData get dt => Data.notFound.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
    );
  }
}
