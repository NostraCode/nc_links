part of '../_index.dart';

class ChatRoomAppbar extends StatelessWidget {
  const ChatRoomAppbar({Key? key}) : super(key: key);

  ChatRoomCtrl get ct => x1ChatRoomCtrl;
  ChatRoomData get dt => x1ChatRoomData.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
    );
  }
}
