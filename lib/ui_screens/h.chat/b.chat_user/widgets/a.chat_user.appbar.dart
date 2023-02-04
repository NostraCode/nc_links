part of '../_index.dart';

class ChatUserAppbar extends StatelessWidget {
  const ChatUserAppbar({Key? key}) : super(key: key);

  ChatUserCtrl get ct => Ctrl.chatUser;
  ChatUserData get dt => Data.chatUser.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
    );
  }
}
