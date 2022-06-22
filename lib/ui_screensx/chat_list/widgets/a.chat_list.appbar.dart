part of '../_index.dart';

class ChatListAppbar extends StatelessWidget {
  const ChatListAppbar({Key? key}) : super(key: key);

  ChatListCtrl get ct => x1ChatListCtrl;
  ChatListData get dt => x1ChatListData.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
    );
  }
}
