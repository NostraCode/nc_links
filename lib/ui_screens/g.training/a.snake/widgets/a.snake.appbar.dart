part of '../_index.dart';

class SnakeAppbar extends StatelessWidget {
  const SnakeAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.title)),
    );
  }
}
