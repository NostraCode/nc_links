part of '../_index.dart';

class ChatFriendFab extends StatelessWidget {
  const ChatFriendFab({Key? key}) : super(key: key);

  ChatFriendCtrl get ct => x1ChatFriendCtrl;
  ChatFriendData get dt => x1ChatFriendData.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
