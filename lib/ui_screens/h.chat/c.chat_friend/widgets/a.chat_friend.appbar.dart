part of '../_index.dart';

class ChatFriendAppbar extends StatelessWidget {
  const ChatFriendAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
