part of '../_index.dart';

class ChatMessageItem extends StatelessWidget {
  final int index;
  const ChatMessageItem({
    Key? key,
    required this.index,
  }) : super(key: key);

  ChatMessageCtrl get ct => Ctrl.chatMessage;
  ChatMessageData get dt => Data.chatMessage.st;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Visibility(
          visible: ct.isEndOfDate(index),
          child: ChatMessageDate(index: index),
        ),
        ChatMessageBalloon(
          index: index,
          isSend: ct.isSend(dt.rxChatMessages.st[index].idUser),
          isNip: ct.isNip(index),
        ),
      ],
    );
  }
}
