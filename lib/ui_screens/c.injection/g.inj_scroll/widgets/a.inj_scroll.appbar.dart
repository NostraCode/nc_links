part of '../_index.dart';

class InjScrollAppbar extends StatelessWidget {
  const InjScrollAppbar({Key? key}) : super(key: key);

  InjScrollCtrl get ct => Ctrl.injScroll;
  InjScrollData get dt => Data.injScroll.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.title)),
    );
  }
}
