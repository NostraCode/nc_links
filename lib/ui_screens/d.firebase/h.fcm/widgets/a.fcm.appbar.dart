part of '../_index.dart';

class FcmAppbar extends StatelessWidget {
  const FcmAppbar({Key? key}) : super(key: key);

  FcmCtrl get ct => x1FcmCtrl;
  FcmData get dt => x1FcmData.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
    );
  }
}
