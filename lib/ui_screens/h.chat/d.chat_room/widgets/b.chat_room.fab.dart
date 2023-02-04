part of '../_index.dart';

class ChatRoomFab extends StatelessWidget {
  const ChatRoomFab({Key? key}) : super(key: key);

  ChatRoomCtrl get ct => Ctrl.chatRoom;
  ChatRoomData get dt => Data.chatRoom.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.chat),
      onPressed: () => ct.action(),
    );
  }
}
