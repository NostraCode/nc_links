part of '../_index.dart';

class ChatListFab extends StatelessWidget {
  const ChatListFab({Key? key}) : super(key: key);

  ChatListCtrl get ct => x1ChatListCtrl;
  ChatListData get dt => x1ChatListData.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
