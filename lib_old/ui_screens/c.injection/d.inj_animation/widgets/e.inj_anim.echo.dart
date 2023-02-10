part of '../_index.dart';

class InjAnimEcho extends StatelessWidget {
  const InjAnimEcho({Key? key}) : super(key: key);

  InjAnimCtrl get ct => Ctrl.injAnim;
  InjAnimData get dt => Data.injAnim.st;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
