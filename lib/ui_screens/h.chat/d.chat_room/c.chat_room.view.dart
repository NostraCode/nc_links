part of '_index.dart';

class ChatRoomView extends StatelessWidget {
  const ChatRoomView({Key? key}) : super(key: key);

  ChatRoomCtrl get ct => x1ChatRoomCtrl;
  ChatRoomData get dt => x1ChatRoomData.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ChatRoomAppbar(),
      ),
      floatingActionButton: const ChatRoomFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            ChatRoomCards(),
            // ChatRoomDelta(),
            // ChatRoomEcho(),
          ],
        ),
      ),
    );
  }
}
