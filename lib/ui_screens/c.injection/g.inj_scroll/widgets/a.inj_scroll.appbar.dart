part of '../_index.dart';

class InjScrollAppbar extends StatelessWidget {
  const InjScrollAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.title)),
    );
  }
}
