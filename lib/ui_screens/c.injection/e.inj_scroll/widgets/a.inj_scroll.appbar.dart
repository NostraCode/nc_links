part of '../_index.dart';

class InjScrollAppbar extends StatelessWidget {
  const InjScrollAppbar({Key? key}) : super(key: key);

  InjScrollCtrl get ct => x1InjScrollCtrl;
  InjScrollData get dt => x1InjScrollData.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.title)),
    );
  }
}
