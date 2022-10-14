part of '../_index.dart';

class ChatMessageInput extends StatelessWidget {
  const ChatMessageInput({Key? key}) : super(key: key);

  ChatMessageCtrl get ct => x1ChatMessageCtrl;
  ChatMessageData get dt => x1ChatMessageData.st;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.1),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
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
