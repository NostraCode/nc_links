part of '../_index.dart';

class ChatLoginFab extends StatelessWidget {
  const ChatLoginFab({Key? key}) : super(key: key);

  ChatLoginCtrl get ct => Ctrl.chatLogin;
  ChatLoginData get dt => Data.chatLogin.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
