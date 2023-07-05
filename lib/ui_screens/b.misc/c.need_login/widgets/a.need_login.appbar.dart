part of '../_index.dart';

class NeedLoginAppbar extends StatelessWidget {
  const NeedLoginAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
