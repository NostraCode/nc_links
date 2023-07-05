part of '../_index.dart';

class InjI18nAppbar extends StatelessWidget {
  const InjI18nAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.title)),
    );
  }
}
