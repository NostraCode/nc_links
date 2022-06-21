part of '../_index.dart';

class InjThemeButton extends StatelessWidget {
  final String label;
  final Function() fun;
  const InjThemeButton({
    Key? key,
    required this.label,
    required this.fun,
  }) : super(key: key);

  InjThemeCtrl get ct => x1InjThemeCtrl;
  InjThemeData get dt => x1InjThemeData.st;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: ElevatedButton(
        onPressed: fun,
        child: Text(label),
      ),
    );
  }
}
