part of '_index.dart';

class ChatFriendView extends StatelessWidget {
  const ChatFriendView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ChatFriendAppbar(),
      ),
      floatingActionButton: ChatFriendFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ChatFriendCards(),
            // ChatFriendCard(),
            // ChatFriendEcho(),
          ],
        ),
      ),
    );
  }
}
