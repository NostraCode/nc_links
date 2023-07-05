part of '../_index.dart';

class ChatRoomAppbar extends StatelessWidget {
  const ChatRoomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
