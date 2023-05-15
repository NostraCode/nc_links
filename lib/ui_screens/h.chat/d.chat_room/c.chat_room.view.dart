part of '_index.dart';

class ChatRoomView extends StatelessWidget {
  const ChatRoomView({Key? key}) : super(key: key);

  ChatRoomCtrl get ct => Ctrl.chatRoom;
  ChatRoomData get dt => Data.chatRoom.st;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ChatRoomAppbar(),
      ),
      floatingActionButton: ChatRoomFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ChatRoomCards(),
            // ChatRoomDelta(),
            // ChatRoomEcho(),
          ],
        ),
      ),
    );
  }
}
