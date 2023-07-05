part of '../_index.dart';

class RestInputAppbar extends StatelessWidget {
  const RestInputAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.title)),
    );
  }
}
