part of '../_index.dart';

class InjStateColumnX extends StatelessWidget {
  final String textA;
  final String textB;
  final Widget child;
  const InjStateColumnX({
    Key? key,
    required this.textA,
    required this.textB,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('($textA)'),
        Text('($textB)'),
        child,
      ],
    );
  }
}
