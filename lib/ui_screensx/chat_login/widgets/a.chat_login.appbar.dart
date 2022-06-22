part of '../_index.dart';

class ChatLoginAppbar extends StatelessWidget {
  const ChatLoginAppbar({Key? key}) : super(key: key);

  ChatLoginCtrl get ct => x1ChatLoginCtrl;
  ChatLoginData get dt => x1ChatLoginData.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
    );
  }
}
