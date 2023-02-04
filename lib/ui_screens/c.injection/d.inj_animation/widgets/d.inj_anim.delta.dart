part of '../_index.dart';

class InjAnimDelta extends StatelessWidget {
  const InjAnimDelta({Key? key}) : super(key: key);

  InjAnimCtrl get ct => Ctrl.injAnim;
  InjAnimData get dt => Data.injAnim.st;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
