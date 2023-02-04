part of '../_index.dart';

class ChatFriendAppbar extends StatelessWidget {
  const ChatFriendAppbar({Key? key}) : super(key: key);

  ChatFriendCtrl get ct => Ctrl.chatFriend;
  ChatFriendData get dt => Data.chatFriend.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
    );
  }
}
