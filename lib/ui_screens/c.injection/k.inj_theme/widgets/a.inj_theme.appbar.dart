part of '../_index.dart';

class InjThemeAppbar extends StatelessWidget {
  const InjThemeAppbar({Key? key}) : super(key: key);

  InjThemeCtrl get ct => x1InjThemeCtrl;
  InjThemeData get dt => x1InjThemeData.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.title)),
    );
  }
}
