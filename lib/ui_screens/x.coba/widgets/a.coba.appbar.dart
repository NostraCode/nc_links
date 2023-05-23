part of '../_index.dart';

class CobaAppbar extends StatelessWidget {
  const CobaAppbar({Key? key}) : super(key: key);

  CobaCtrl get ct => Ctrl.coba;
  CobaData get dt => Data.coba.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
    );
  }
}
