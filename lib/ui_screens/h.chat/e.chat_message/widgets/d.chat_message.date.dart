part of '../_index.dart';

class ChatMessageDate extends StatelessWidget {
  final int index;
  const ChatMessageDate({
    Key? key,
    required this.index,
  }) : super(key: key);

  ChatMessageCtrl get ct => Ctrl.chatMessage;
  ChatMessageData get dt => Data.chatMessage.st;

  @override
  Widget build(BuildContext context) {
    final item = dt.rxChatMessages.st[index];

    return Container(
      margin: const EdgeInsets.fromLTRB(8, 14, 8, 6),
      padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: const BorderRadius.all(
          Radius.circular(6),
        ),
      ),
      child: Text(
        // item.date,
        ct.getDate(item.timestamp),
        textScaleFactor: 0.75,
      ),
    );
  }
}
