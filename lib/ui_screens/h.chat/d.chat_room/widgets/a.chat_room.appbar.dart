part of '../_index.dart';

class ChatRoomAppbar extends StatelessWidget {
  const ChatRoomAppbar({Key? key}) : super(key: key);

  ChatRoomCtrl get ct => Ctrl.chatRoom;
  ChatRoomData get dt => Data.chatRoom.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
    );
  }
}
