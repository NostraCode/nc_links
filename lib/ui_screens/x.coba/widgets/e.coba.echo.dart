part of '../_index.dart';

class CobaEcho extends StatelessWidget {
  const CobaEcho({Key? key}) : super(key: key);

  CobaCtrl get ct => Ctrl.coba;
  CobaData get dt => Data.coba.st;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
