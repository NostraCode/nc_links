part of '../_index.dart';

class PopupAppbar extends StatelessWidget {
  const PopupAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.title)),
    );
  }
}
