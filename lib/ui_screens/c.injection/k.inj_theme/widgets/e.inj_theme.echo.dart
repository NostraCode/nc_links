part of '../_index.dart';

class InjThemeEcho extends StatelessWidget {
  const InjThemeEcho({Key? key}) : super(key: key);

  InjThemeCtrl get ct => Ctrl.injTheme;
  InjThemeData get dt => Data.injTheme.st;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
