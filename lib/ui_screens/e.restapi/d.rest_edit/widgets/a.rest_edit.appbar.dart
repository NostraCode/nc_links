part of '../_index.dart';

class RestEditAppbar extends StatelessWidget {
  const RestEditAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.title)),
    );
  }
}
