part of '_index.dart';

class ChatFriendView extends StatelessWidget {
  const ChatFriendView({Key? key}) : super(key: key);

  ChatFriendCtrl get ct => x1ChatFriendCtrl;
  ChatFriendData get dt => x1ChatFriendData.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ChatFriendAppbar(),
      ),
      floatingActionButton: const ChatFriendFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            ChatFriendCards(),
            // ChatFriendCard(),
            // ChatFriendEcho(),
          ],
        ),
      ),
    );
  }
}
