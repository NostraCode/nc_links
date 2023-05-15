part of '../_index.dart';

class ChatMessageInput extends StatelessWidget {
  const ChatMessageInput({Key? key}) : super(key: key);

  ChatMessageCtrl get ct => Ctrl.chatMessage;
  ChatMessageData get dt => Data.chatMessage.st;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.1),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 2),
          Expanded(
            child: ChatMessageTextField(),
          ),
          ChatMessageTextBtn(),
          SizedBox(width: 6),
        ],
      ),
    );
  }
}
