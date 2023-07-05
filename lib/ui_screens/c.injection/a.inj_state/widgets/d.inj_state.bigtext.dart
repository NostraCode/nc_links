part of '../_index.dart';

class InjStateBigText extends StatelessWidget {
  final String text;
  const InjStateBigText(
    this.text, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, textScaleFactor: 1.5);
  }
}
