part of '../_index.dart';

class ChatFriendFab extends StatelessWidget {
  const ChatFriendFab({Key? key}) : super(key: key);

  ChatFriendCtrl get ct => Ctrl.chatFriend;
  ChatFriendData get dt => Data.chatFriend.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
