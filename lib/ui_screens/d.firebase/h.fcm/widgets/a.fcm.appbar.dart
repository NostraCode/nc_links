part of '../_index.dart';

class FcmAppbar extends StatelessWidget {
  const FcmAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
