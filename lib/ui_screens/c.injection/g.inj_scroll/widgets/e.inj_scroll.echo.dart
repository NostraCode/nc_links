part of '../_index.dart';

class InjScrollEcho extends StatelessWidget {
  const InjScrollEcho({Key? key}) : super(key: key);

  InjScrollCtrl get ct => Ctrl.injScroll;
  InjScrollData get dt => Data.injScroll.st;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
