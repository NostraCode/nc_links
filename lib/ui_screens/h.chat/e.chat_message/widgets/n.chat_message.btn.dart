part of '../_index.dart';

class ChatMessageTextBtn extends StatelessWidget {
  const ChatMessageTextBtn({Key? key}) : super(key: key);

  ChatMessageCtrl get ct => Ctrl.chatMessage;
  ChatMessageData get dt => Data.chatMessage.st;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 54,
      height: 60,
      child: Center(
        child: ElevatedButton(
          style: TextButton.styleFrom(
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(12),
          ),
          child: const Icon(Icons.send),
          onPressed: () => ct.send(),
        ),
      ),
    );
  }
}
