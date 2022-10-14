part of '../_index.dart';

class ChatFriendAppbar extends StatelessWidget {
  const ChatFriendAppbar({Key? key}) : super(key: key);

  ChatFriendCtrl get ct => x1ChatFriendCtrl;
  ChatFriendData get dt => x1ChatFriendData.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
    );
  }
}
