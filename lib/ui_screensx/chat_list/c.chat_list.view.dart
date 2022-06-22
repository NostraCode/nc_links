part of '_index.dart';

class ChatListView extends StatelessWidget {
  const ChatListView({Key? key}) : super(key: key);

  ChatListCtrl get ct => x1ChatListCtrl;
  ChatListData get dt => x1ChatListData.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ChatListAppbar(),
      ),
      floatingActionButton: const ChatListFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            ChatListCharlie(),
            ChatListDelta(),
            ChatListEcho(),
          ],
        ),
      ),
    );
  }
}
