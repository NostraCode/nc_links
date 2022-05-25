part of '../_index.dart';

class InjAnimEcho extends StatelessWidget {
  const InjAnimEcho({Key? key}) : super(key: key);

  InjAnimCtrl get ct => x1InjAnimCtrl;
  InjAnimData get dt => x1InjAnimData.st;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
