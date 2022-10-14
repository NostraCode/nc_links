part of '../_index.dart';

class ChatUserFab extends StatelessWidget {
  const ChatUserFab({Key? key}) : super(key: key);

  ChatUserCtrl get ct => x1ChatUserCtrl;
  ChatUserData get dt => x1ChatUserData.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
