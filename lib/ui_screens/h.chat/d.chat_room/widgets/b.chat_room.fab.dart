part of '../_index.dart';

class ChatRoomFab extends StatelessWidget {
  const ChatRoomFab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.chat),
      onPressed: () => _ct.action(),
    );
  }
}
