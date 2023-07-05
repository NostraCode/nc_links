part of '../_index.dart';

class OnlyAdminAppbar extends StatelessWidget {
  const OnlyAdminAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
