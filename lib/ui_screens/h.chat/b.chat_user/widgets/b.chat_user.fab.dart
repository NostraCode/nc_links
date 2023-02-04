part of '../_index.dart';

class ChatUserFab extends StatelessWidget {
  const ChatUserFab({Key? key}) : super(key: key);

  ChatUserCtrl get ct => Ctrl.chatUser;
  ChatUserData get dt => Data.chatUser.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
