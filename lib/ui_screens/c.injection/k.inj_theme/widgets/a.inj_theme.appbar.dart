part of '../_index.dart';

class InjThemeAppbar extends StatelessWidget {
  const InjThemeAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.title)),
    );
  }
}
