part of '../_index.dart';

class InjStateBigText extends StatelessWidget {
  final String text;
  const InjStateBigText(
    this.text, {
    Key? key,
  }) : super(key: key);

  InjStateCtrl get ct => Ctrl.injState;
  InjStateData get dt => Data.injState.st;

  @override
  Widget build(BuildContext context) {
    return Text(text, textScaleFactor: 1.5);
  }
}
