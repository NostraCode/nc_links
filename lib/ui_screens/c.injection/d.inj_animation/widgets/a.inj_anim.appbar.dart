part of '../_index.dart';

class InjAnimAppbar extends StatelessWidget {
  const InjAnimAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.title)),
    );
  }
}
