part of '../_index.dart';

class ChatDetailAppbar extends StatelessWidget {
  const ChatDetailAppbar({Key? key}) : super(key: key);

  ChatDetailCtrl get ct => x1ChatDetailCtrl;
  ChatDetailData get dt => x1ChatDetailData.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
    );
  }
}
