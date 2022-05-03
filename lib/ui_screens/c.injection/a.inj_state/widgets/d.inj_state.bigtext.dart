part of '../_index.dart';

class InjStateBigText extends StatelessWidget {
  final String text;
  const InjStateBigText(
    this.text, {
    Key? key,
  }) : super(key: key);

  InjStateCtrl get ct => x1InjStateCtrl;
  InjStateData get dt => x1InjStateData.st;

  @override
  Widget build(BuildContext context) {
    return Text(text, textScaleFactor: 1.5);
  }
}
