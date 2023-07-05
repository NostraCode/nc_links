part of '../_index.dart';

class RestListAppbar extends StatelessWidget {
  const RestListAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.title)),
    );
  }
}
