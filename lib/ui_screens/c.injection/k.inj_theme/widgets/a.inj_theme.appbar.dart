part of '../_index.dart';

class InjThemeAppbar extends StatelessWidget {
  const InjThemeAppbar({Key? key}) : super(key: key);

  InjThemeCtrl get ct => Ctrl.injTheme;
  InjThemeData get dt => Data.injTheme.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.title)),
    );
  }
}
