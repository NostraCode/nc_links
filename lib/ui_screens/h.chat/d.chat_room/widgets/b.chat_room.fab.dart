part of '../_index.dart';

class ChatRoomFab extends StatelessWidget {
  const ChatRoomFab({Key? key}) : super(key: key);

  ChatRoomCtrl get ct => x1ChatRoomCtrl;
  ChatRoomData get dt => x1ChatRoomData.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.chat),
      onPressed: () => ct.action(),
    );
  }
}
