part of '../_index.dart';

class InjForxAppbar extends StatelessWidget {
  const InjForxAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.title)),
    );
  }
}
